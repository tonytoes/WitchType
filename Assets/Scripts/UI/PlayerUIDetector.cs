using UnityEngine;
using System.Collections;

[RequireComponent(typeof(BoxCollider2D))]
public class PlayerUIDetector : MonoBehaviour
{
    [Header("Detection Settings")]
    public string playerTag = "Player";

    [Header("UI Objects To Toggle")]
    public GameObject[] activateOnEnter;      // Activates every time player enters
    public GameObject[] deactivateOnEnter;    // Deactivates every time player enters

    [Header("UI Objects To Activate Once")]
    public GameObject[] activateOnceOnEnter;  // Activates once, then hides

    [Tooltip("Time before the one-time UI is hidden (seconds). Match this to your animation length.")]
    public float oneTimeUIDuration = 1f;

    private bool playerInside = false;
    private bool activatedOnce = false;

    private void Start()
    {
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
        // Activate every time player enters
        foreach (GameObject obj in activateOnEnter)
        {
            if (obj != null)
                obj.SetActive(entered);
        }

        // Deactivate every time player enters
        foreach (GameObject obj in deactivateOnEnter)
        {
            if (obj != null)
                obj.SetActive(!entered);
        }

        // Activate only once, then automatically hide
        if (entered && !activatedOnce)
        {
            activatedOnce = true;
            StartCoroutine(PlayOneTimeUI());
        }
    }

    private IEnumerator PlayOneTimeUI()
    {
        foreach (GameObject obj in activateOnceOnEnter)
        {
            if (obj != null)
                obj.SetActive(true);
        }

        // Wait for animation to finish
        yield return new WaitForSeconds(oneTimeUIDuration);

        foreach (GameObject obj in activateOnceOnEnter)
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
            Gizmos.DrawCube(transform.position + (Vector3)box.offset, box.size);
    }
}