using UnityEngine;

public class EnemyHealth : MonoBehaviour, IDamagable
{
    [SerializeField] private float maxHealth = 5f;
    [SerializeField] private ParticleSystem damageParticles;
    [SerializeField] private FloatingHealthBar floatingHealthBar; 

    private float health;
    private DamageFlash _damageFlash;
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

        if (floatingHealthBar == null)
            floatingHealthBar = GetComponentInChildren<FloatingHealthBar>();
        if (floatingHealthBar != null)
            floatingHealthBar.UpdateHealth(health, maxHealth);
    }

    public void TakeDamage(float damage, Vector2 attackDirection)
    {
        HasTakenDamage = true;

        health -= damage;
        health = Mathf.Clamp(health, 0, maxHealth);

        if (floatingHealthBar != null)
            floatingHealthBar.UpdateHealth(health, maxHealth);

        SpawnDamageParticles(attackDirection);
        _damageFlash.CallDamageFlash();

        if (CinemachineShake.Instance != null)
            CinemachineShake.Instance.ShakeOnce(0.7f);

        if (enemy != null && health > 0)
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
        Instantiate(damageParticles, transform.position, spawnRotation);
    }
}
