using UnityEngine;

public class InteractDestroy : MonoBehaviour
{
    [SerializeField] private GameObject targetObject; 
    private bool playerInRange = false;

    void Update()
    {
        
        if (playerInRange && Input.GetKeyDown(KeyCode.E))
        {
            if (targetObject != null)
            {
                Destroy(targetObject);
            }
            else
            {
                Debug.LogWarning("Target object not assigned in InteractDestroy!");
            }
        }
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
