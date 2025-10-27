using UnityEngine;

public class HealthPotionCollector : MonoBehaviour
{
    public GameObject healEffectPrefab; // child heal prefab (currently inactive)

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            if (healEffectPrefab != null)
            {
                // detach it from parent so it won't get destroyed
                healEffectPrefab.transform.SetParent(null);

                // activate the heal effect
                healEffectPrefab.SetActive(true);
            }
            else
            {
                Debug.LogWarning("HealthPotionCollector: Heal prefab not assigned!");
            }

            // destroy the potion itself
            Destroy(gameObject);
        }
    }
}
