using UnityEngine;

public class InteractReveal : MonoBehaviour
{
    [SerializeField] private GameObject targetObject;
    [SerializeField] private float revealDelay = 0f;  
    private bool playerInRange = false;
    private bool hasRevealed = false;

    void Update()
    {
        if (playerInRange && Input.GetKeyDown(KeyCode.E) && !hasRevealed)
        {
            if (targetObject != null)
                StartCoroutine(RevealAfterDelay());
            else
                Debug.LogWarning("Target object not assigned in InteractReveal!");
        }
    }

    private System.Collections.IEnumerator RevealAfterDelay()
    {
        hasRevealed = true;
        Debug.Log($"Revealing {targetObject.name} in {revealDelay} seconds...");
        yield return new WaitForSeconds(revealDelay);

        targetObject.SetActive(true);
        Debug.Log($"{targetObject.name} is now visible!");
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            playerInRange = true;
            Debug.Log("Player entered interaction range.");
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            playerInRange = false;
            Debug.Log("Player left interaction range.");
        }
    }
}
