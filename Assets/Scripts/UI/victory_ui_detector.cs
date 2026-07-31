using UnityEngine;

[RequireComponent(typeof(BoxCollider2D))]
public class victory_ui_detector : MonoBehaviour
{
    [Header("Detection Settings")]
    public string playerTag = "Player";

    [Header("UI Objects To Toggle")]
    public GameObject[] activateOnEnter;   // Activates when player enters
    public GameObject[] deactivateOnEnter; // Deactivates when player enters

    private bool hasTriggered = false;

    private void Start()
    {
        // Make sure collider is a trigger
        BoxCollider2D col = GetComponent<BoxCollider2D>();
        col.isTrigger = true;
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        // Ignore if already triggered or not the player
        if (hasTriggered || !other.CompareTag(playerTag))
            return;

        hasTriggered = true;

        ToggleUI();

        Debug.Log($"🧍 Player entered {gameObject.name}");

        // Disable trigger and this script so it never runs again
        GetComponent<Collider2D>().enabled = false;
        enabled = false;
    }

    private void ToggleUI()
    {
        // Activate these objects
        foreach (GameObject obj in activateOnEnter)
        {
            if (obj != null)
                obj.SetActive(true);
        }

        // Deactivate these objects
        foreach (GameObject obj in deactivateOnEnter)
        {
            if (obj != null)
                obj.SetActive(false);
        }
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(0f, 0.5f, 1f, 0.3f);

        BoxCollider2D box = GetComponent<BoxCollider2D>();
        if (box != null)
        {
            Gizmos.DrawCube(
                transform.position + (Vector3)box.offset,
                box.size
            );
        }
    }
}