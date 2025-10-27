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
        Vector3 playerPos = GameObject.FindGameObjectWithTag("Player").transform.position;
        Vector3 mouseWorld = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        mouseWorld.z = 0f;

        Vector3 direction = (mouseWorld - playerPos).normalized;

        float distance = Vector3.Distance(playerPos, mouseWorld);
        if (distance > maxDistance)
            mouseWorld = playerPos + direction * maxDistance;

        transform.position = mouseWorld;

        if (sfxSource != null && launchSound != null)
            sfxSource.PlayOneShot(launchSound);
            

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
