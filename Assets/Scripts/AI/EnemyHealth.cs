using UnityEngine;

public class EnemyHealth : MonoBehaviour, IDamagable
{
    [SerializeField] private float maxHealth = 5f;
    [SerializeField] private ParticleSystem damageParticles;
    private float health;

    private DamageFlash _damageFlash;
    private ParticleSystem damageParticlesInstance;

    private Enemy enemy;

    public AudioSource sfxSource;
    public AudioClip death_sound;
    public AudioClip hit_sound;


    public bool HasTakenDamage { get; set; }

    void Start()
    {
        health = maxHealth;

        _damageFlash = GetComponent<DamageFlash>();
        enemy = GetComponent<Enemy>();
    }

    public void TakeDamage(float damage, Vector2 attackDirection)
    {
        HasTakenDamage = true;
    
        health -= damage;
        health = Mathf.Clamp(health, 0, maxHealth);

        SpawnDamageParticles(attackDirection);
        _damageFlash.CallDamageFlash();
        // to do and sound effect

        if(enemy != null && health > 0)
        {
            enemy.OnDamagedByPlayer(attackDirection);
            if (sfxSource != null && hit_sound != null)
            sfxSource.PlayOneShot(hit_sound);
        }

        if (health <= 0)
        {
            if (sfxSource != null && death_sound != null)
            sfxSource.PlayOneShot(death_sound);
            enemy.Die();
        }

    }

    private void SpawnDamageParticles(Vector2 attackDirection)
    {
        Quaternion spawnRotation = Quaternion.FromToRotation(Vector2.right, attackDirection);


        damageParticlesInstance = Instantiate(damageParticles, transform.position, spawnRotation);
    }

}
