using UnityEngine;

public class KeyCollector : MonoBehaviour
{
    public GameObject keyObject;

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            // show popup if UI manager exists
            if (KeyCollectUI.Instance != null)
            {
                KeyCollectUI.Instance.ShowPopup();
            }
            else
            {
                Debug.LogWarning("KeyCollectUI instance not found!");
            }

            // destroy the key collectible
            if (keyObject != null)
                Destroy(keyObject);
            else
                Destroy(gameObject);
        }
    }
}
