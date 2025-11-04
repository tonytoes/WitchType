using UnityEngine;

[RequireComponent(typeof(BoxCollider2D))]
public class PlayerUIDetector : MonoBehaviour
{
    [Header("Detection Settings")]
    public string playerTag = "Player";

    [Header("UI Objects To Toggle")]
    public GameObject[] activateOnEnter; // activates when player enters
    public GameObject[] deactivateOnEnter; // deactivates when player enters

    private bool playerInside = false;

    private void Start()
    {
        // make sure collider is trigger
        BoxCollider2D col = GetComponent<BoxCollider2D>();
        col.isTrigger = true;
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            playerInside = true;
            ToggleUI(true);
            Debug.Log($"🧍 Player entered {gameObject.name}");
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            playerInside = false;
            ToggleUI(false);
            Debug.Log($"🚪 Player exited {gameObject.name}");
        }
    }

    private void ToggleUI(bool entered)
    {
        // activate these when player enters
        foreach (GameObject obj in activateOnEnter)
        {
            if (obj != null)
                obj.SetActive(entered);
        }

        // deactivate these when player enters
        foreach (GameObject obj in deactivateOnEnter)
        {
            if (obj != null)
                obj.SetActive(!entered);
        }
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(0f, 0.5f, 1f, 0.3f);
        BoxCollider2D box = GetComponent<BoxCollider2D>();
        if (box != null)
            Gizmos.DrawCube(transform.position + (Vector3)box.offset, box.size);
    }
}
