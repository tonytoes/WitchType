using UnityEngine;
using System.Collections;

public class Spike : MonoBehaviour
{
    public float knockbackForce = 5f;
    public float knockbackDuration = 0.2f;
    public Animator anim; 

    private Collider2D spikeCollider;

    private void Awake()
    {
        spikeCollider = GetComponent<Collider2D>();
    }


    public void SetActive(bool active)
    {
        if (anim != null)
            anim.SetBool("IsActive", active);

        // add audio here thanks

        if (!active)
            spikeCollider.enabled = false;

        StartCoroutine(ToggleColliderAfterDelay(active));
    }

    public void SetColliderState(int value)
    {
        spikeCollider.enabled = value == 1;
    }

    private IEnumerator ToggleColliderAfterDelay(bool active)
    {
        yield return new WaitForSeconds(0.3f);
        spikeCollider.enabled = active;
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (spikeCollider.enabled && collision.CompareTag("Player"))
        {
            PlayerHealth playerHealth = collision.GetComponent<PlayerHealth>();
            if (playerHealth != null)
                playerHealth.ChangeHealth(-1);

            Rigidbody2D rb = collision.GetComponent<Rigidbody2D>();
            if (rb != null)
            {
                Vector2 direction = (collision.transform.position - transform.position).normalized;
                rb.linearVelocity = Vector2.zero;
                rb.AddForce(direction * knockbackForce, ForceMode2D.Impulse);

                PlayerMovement move = collision.GetComponent<PlayerMovement>();
                if (move != null)
                    move.StartCoroutine(DisableMovementTemporarily(move));
            }
        }
    }

    private IEnumerator DisableMovementTemporarily(PlayerMovement move)
    {
        move.enabled = false;
        yield return new WaitForSeconds(knockbackDuration);
        move.enabled = true;
    }
}
