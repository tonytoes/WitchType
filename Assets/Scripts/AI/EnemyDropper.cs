using UnityEngine;

public class EnemyDropper : MonoBehaviour
{
    [Header("Drop Settings")]
    [SerializeField] private GameObject dropPrefab;
    [SerializeField] private float dropDelay = 0.3f; // wait a bit before dropping
    [SerializeField] private bool dropOnce = true;

    private bool hasDropped = false;

    private void OnDestroy()
    {
        // Skip if game is quitting or if it already dropped
        if (hasDropped || Application.isPlaying == false) return;

        hasDropped = true;
        DropLoot();
    }

    private void DropLoot()
    {
        if (dropPrefab != null)
        {
            // Spawn the item slightly after enemy disappears
            Instantiate(dropPrefab, transform.position, Quaternion.identity);
        }
    }
}
