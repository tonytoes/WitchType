using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageOvertimeAOE : MonoBehaviour
{
    [Header("Stats")]
    public float lifetime = 3f;
    public float kbForce = 5f;
    public float knockbackTime = .15f;
    public float stunTime = 1f;
    public int damage = 1;
    public float damageInterval = 0.2f; // how often damage is applied
    public float maxDistance = 10f;
    public float shakeduration = 1f;

    [Header("SFX")]
    private AudioManager audioManager;
    public string sfx;

    // Keep track of enemies inside the AOE
    private List<EnemyHealth> enemiesInAOE = new List<EnemyHealth>();

    private void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        // Get player and mouse positions
        Vector3 playerPos = GameObject.FindGameObjectWithTag("Player").transform.position;
        Vector3 mouseWorld = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        mouseWorld.z = 0f;

        // Direction from player to mouse
        Vector3 direction = (mouseWorld - playerPos).normalized;

        // Clamp position to maxDistance
        float distance = Vector3.Distance(playerPos, mouseWorld);
        if (distance > maxDistance)
            mouseWorld = playerPos + direction * maxDistance;

        // Set the spawn position
        transform.position = mouseWorld;

        // Play sound effect
        audioManager?.PlaySFX(sfx);

        // Start damaging enemies over time
        StartCoroutine(DamageOverTime());
        CinemachineShake.Instance.ShakeOnce(shakeduration);

        // Auto-destroy after lifetime
        Destroy(gameObject, lifetime);
    }

    private IEnumerator DamageOverTime()
    {
        while (true)
        {
            yield return new WaitForSeconds(damageInterval);

            // Damage all enemies currently in AOE
            for (int i = enemiesInAOE.Count - 1; i >= 0; i--)
            {
                if (enemiesInAOE[i] == null)
                {
                    enemiesInAOE.RemoveAt(i);
                    continue;
                }

                enemiesInAOE[i].TakeDamage(damage, Vector2.zero);

                EnemyKnockback knockback = enemiesInAOE[i].GetComponent<EnemyKnockback>();
                if (knockback != null)
                    knockback.KnockBack(transform, kbForce, knockbackTime, stunTime);
            }
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Enemy"))
        {
            EnemyHealth enemy = other.GetComponent<EnemyHealth>();
            if (enemy != null && !enemiesInAOE.Contains(enemy))
                enemiesInAOE.Add(enemy);
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("Enemy"))
        {
            EnemyHealth enemy = other.GetComponent<EnemyHealth>();
            if (enemy != null && enemiesInAOE.Contains(enemy))
                enemiesInAOE.Remove(enemy);
        }
    }
}
