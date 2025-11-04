using UnityEngine;
using System.Collections;

public class InteractDestroy : MonoBehaviour
{
    [SerializeField] private GameObject targetObject; 
    [SerializeField] private float destroyDelay = 1f; // 🕐 delay before destroying
    private bool playerInRange = false;
    private bool isDestroying = false; // prevent spam if you press E multiple times

    void Update()
    {
        if (playerInRange && Input.GetKeyDown(KeyCode.E) && !isDestroying)
        {
            if (targetObject != null)
            {
                StartCoroutine(DestroyAfterDelay());
            }
            else
            {
                Debug.LogWarning("Target object not assigned in InteractDestroy!");
            }
        }
    }

    private IEnumerator DestroyAfterDelay()
    {
        isDestroying = true;
        Debug.Log($"Destroying {targetObject.name} in {destroyDelay} seconds...");
        yield return new WaitForSeconds(destroyDelay);
        Destroy(targetObject);
        Debug.Log($"{targetObject.name} destroyed!");
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
