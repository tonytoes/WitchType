using UnityEngine;

public class DialogCollisionTrigger : MonoBehaviour
{
    [SerializeField] private GameObject objectToActivate;
    [SerializeField] private string playerTag = "Player";

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            if (objectToActivate != null)
                objectToActivate.SetActive(true);
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            if (objectToActivate != null)
                objectToActivate.SetActive(false);
        }
    }
}
