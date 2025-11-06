using UnityEngine;

public class AOE : MonoBehaviour
{
    [Header("Stats")]
    public float lifetime = 3f;
    public float kbForce = 5f;
    public float knockbackTime = .15f;
    public float stunTime = 1f;
    public int damage = 1;
    public float maxDistance = 10f;

    [Header("SFX")]
    public AudioSource sfxSource;
    public AudioClip launchSound;

    private void Start()
    {
        // Get player position
        Vector3 playerPos = GameObject.FindGameObjectWithTag("Player").transform.position;

        // ✅ Get aim position from MobileAim (for mobile) or fallback to mouse (for PC)
        Vector3 targetPos = MobileAim.Instance != null
            ? MobileAim.Instance.GetAimWorldPosition()
            : Camera.main.ScreenToWorldPoint(Input.mousePosition);

        targetPos.z = 0f;

        // Clamp the AOE position to max distance from player
        Vector3 direction = (targetPos - playerPos).normalized;
        float distance = Vector3.Distance(playerPos, targetPos);
        if (distance > maxDistance)
            targetPos = playerPos + direction * maxDistance;

        // Move AOE to target position
        transform.position = targetPos;

        // Play launch sound
        if (sfxSource != null && launchSound != null)
            sfxSource.PlayOneShot(launchSound);

        // Destroy after lifetime
        Destroy(gameObject, lifetime);
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Enemy"))
        {
            EnemyHealth enemy = other.GetComponent<EnemyHealth>();
            EnemyKnockback knockback = other.GetComponent<EnemyKnockback>();

            if (enemy != null)
                enemy.TakeDamage(damage, Vector2.zero);

            CinemachineShake.Instance.ShakeOnce(1f);

            if (knockback != null)
                knockback.KnockBack(transform, kbForce, knockbackTime, stunTime);
        }
    }
}