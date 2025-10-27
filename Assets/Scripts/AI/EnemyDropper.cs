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
        if (!Application.isPlaying || hasDropped || gameObject.scene.isLoaded == false)
            return;

        hasDropped = true;
        Instantiate(dropPrefab, transform.position, Quaternion.identity);
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
