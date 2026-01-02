using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider2D))]
public class RepelTrigger : MonoBehaviour
{
    [Header("Repel Settings")]
    public float repelForce = 8f;

    [Header("Tags to affect")]
    public string[] affectTags = { "Collectible", "Spell" };

    private HashSet<Collider2D> inside = new HashSet<Collider2D>();

    private void Awake()
    {
        // ensure it's a trigger
        var c = GetComponent<Collider2D>();
        if (!c.isTrigger) c.isTrigger = true;
    }

    private bool TagMatches(string tag)
    {
        foreach (var t in affectTags)
            if (tag == t)
                return true;
        return false;
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!TagMatches(other.tag)) return;

        inside.Add(other);

        Rigidbody2D rb = other.attachedRigidbody;
        if (rb == null) return;

        if (rb.bodyType != RigidbodyType2D.Dynamic)
        {
            other.transform.position += Vector3.left * 0.1f;
            return;
        }

        // stop current motion instantly then push left
        rb.linearVelocity = Vector2.zero;
        rb.angularVelocity = 0f;
        rb.AddForce(Vector2.left * repelForce, ForceMode2D.Impulse);

        Debug.Log($"Repelled {other.name} to the left!");
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (!inside.Contains(other)) return;
        inside.Remove(other);

        Rigidbody2D rb = other.attachedRigidbody;
        if (rb != null && rb.bodyType == RigidbodyType2D.Dynamic)
        {
            // immediately stop once it leaves the trigger
            rb.linearVelocity = Vector2.zero;
            rb.angularVelocity = 0f;
        }
    }
}
