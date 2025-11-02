using UnityEngine;

public class PlayerOnlyCollider : MonoBehaviour
{
    private void OnCollisionEnter2D(Collision2D collision)
    {
        // Player detection
        if (collision.collider.CompareTag("Player"))
        {
            Debug.Log("Collided with Player!");
            // your logic here (e.g., damage, trigger event, etc.)
        }
        // Let enemies pass through
        else if (collision.collider.CompareTag("Enemy"))
        {
            Physics2D.IgnoreCollision(collision.collider, GetComponent<Collider2D>());
            Debug.Log("Enemy passed through!");
        }
        else
        {
            // ignore everything else too
            Physics2D.IgnoreCollision(collision.collider, GetComponent<Collider2D>());
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Triggered by Player!");
            // your trigger logic here
        }
        else if (other.CompareTag("Enemy"))
        {
            Physics2D.IgnoreCollision(other, GetComponent<Collider2D>());
            Debug.Log("Enemy passed through trigger!");
        }
        else
        {
            Physics2D.IgnoreCollision(other, GetComponent<Collider2D>());
        }
    }
}
