using UnityEngine;

[RequireComponent(typeof(Collider2D))]
public class PushInsideTrigger : MonoBehaviour
{
    [Header("Push Settings")]
    [Tooltip("Direction to push (e.g., -1,0 = left, 1,0 = right)")]
    public Vector2 pushDirection = Vector2.left;

    [Tooltip("Force of the push")]
    public float pushForce = 5f;

    [Header("Tags to Push")]
    public string[] pushableTags = { "Collectible", "Spell" };

    private void OnTriggerStay2D(Collider2D other)
    {
        // check if this object is pushable
        foreach (string tag in pushableTags)
        {
            if (other.CompareTag(tag))
            {
                Rigidbody2D rb = other.attachedRigidbody;
                if (rb != null)
                {
                    // continuous push while inside trigger
                    rb.AddForce(pushDirection.normalized * pushForce * Time.deltaTime, ForceMode2D.Force);
                }
                return;
            }
        }
    }
}
