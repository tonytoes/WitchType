using UnityEngine;
using TMPro;

public class ShowTextOnCollision : MonoBehaviour
{
    [Header("Assign your TextMeshPro UI GameObject here")]
    public GameObject textObject;

    [Header("Tag of the player object")]
    public string playerTag = "Player";

    [Header("Destroy this object after collision?")]
    public bool destroyOnCollision = false;

    private void Start()
    {
        if (textObject != null)
            textObject.SetActive(false);
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (!collision.CompareTag(playerTag)) return;

        // Show UI text
        if (textObject != null)
            textObject.SetActive(true);

        // Instantly hide or destroy this object
        if (destroyOnCollision)
        {
            // This makes it disappear immediately from view
            // but still allows the code to finish running
            gameObject.SetActive(false);
            Destroy(gameObject, 0.1f); // small delay so Unity doesn’t cancel the function mid-frame
        }
    }
}
