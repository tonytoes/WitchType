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
    public float shakeduration = 1f;

    [Header("SFX")]
    private AudioManager audioManager;
    public string sfx;

    private void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        Vector3 playerPos = GameObject.FindGameObjectWithTag("Player").transform.position;
        Vector3 mouseWorld = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        mouseWorld.z = 0f;

        Vector3 direction = (mouseWorld - playerPos).normalized;

        float distance = Vector3.Distance(playerPos, mouseWorld);
        if (distance > maxDistance)
            mouseWorld = playerPos + direction * maxDistance;

        transform.position = mouseWorld;

        audioManager?.PlaySFX(sfx);
            

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
            CinemachineShake.Instance.ShakeOnce(shakeduration);

            if (knockback != null)
                knockback.KnockBack(transform, kbForce, knockbackTime, stunTime);
        }
    }
}
