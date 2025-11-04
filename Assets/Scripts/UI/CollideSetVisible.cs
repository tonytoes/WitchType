using UnityEngine;

public class CollideSetVisible : MonoBehaviour
{
    [Header("Tag Settings")]
    [SerializeField] private string playerTag = "Player";

    [Header("Objects to Activate Once")]
    [SerializeField] private GameObject[] activateOnceObjects;

    [Header("Objects to Deactivate on Collision")]
    [SerializeField] private GameObject[] deactivateObjects;

    private bool hasActivated = false;

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!other.CompareTag(playerTag)) return;

        // Activate once
        if (!hasActivated && activateOnceObjects != null)
        {
            foreach (GameObject obj in activateOnceObjects)
            {
                if (obj != null)
                    obj.SetActive(true);
            }
            hasActivated = true;
        }

        // Deactivate specified objects
        if (deactivateObjects != null)
        {
            foreach (GameObject obj in deactivateObjects)
            {
                if (obj != null)
                    obj.SetActive(false);
            }
        }
    }
}
