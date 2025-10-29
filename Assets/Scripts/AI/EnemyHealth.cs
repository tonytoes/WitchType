using UnityEngine;

public class EnemyHealth : MonoBehaviour, IDamagable
{
    [SerializeField] private float maxHealth = 5f;
    [SerializeField] private ParticleSystem damageParticles;
    [SerializeField] private FloatingHealthBar floatingHealthBar; 

    private float health;
    private DamageFlash _damageFlash;
    private Enemy enemy;

    public string hit_sfx;
    public string death_sfx;

    private AudioManager audioManager;  


    public bool HasTakenDamage { get; set; }

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();

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
            audioManager?.PlaySFX(hit_sfx);
        }

        if (health <= 0)
        {
            audioManager?.PlaySFX(death_sfx);

            enemy.Die();
        }
    }

    private void SpawnDamageParticles(Vector2 attackDirection)
    {
        Quaternion spawnRotation = Quaternion.FromToRotation(Vector2.right, attackDirection);
        Instantiate(damageParticles, transform.position, spawnRotation);
    }
}
