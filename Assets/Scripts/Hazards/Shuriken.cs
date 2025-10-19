using UnityEngine;
using System.Collections;

public class ShurikenHazard : MonoBehaviour
{
    public float moveSpeed = 3f;
    public float moveDistance = 3f;

    public float knockback = 5f;
    public float knockbackDuration = 0.2f;
    public int dmg = 1;

    private Vector3 startPos;
    private bool movingRight = true;
    private Collider2D shurikenCollider;

    //public AudioSource audioSource;
    //public AudioClip hitSound;

    private void Awake()
    {
        shurikenCollider = GetComponent<Collider2D>();
        startPos = transform.position;
    }


    private void Update()
    {

        float moveStep = moveSpeed * Time.deltaTime * (movingRight ? 1 : -1);
        transform.Translate(moveStep, 0, 0);

        if (Mathf.Abs(transform.position.x - startPos.x) >= moveDistance)
        {
            movingRight = !movingRight;
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        PlayerHealth playerHealth = collision.GetComponent<PlayerHealth>();
        if (playerHealth != null)
            playerHealth.ChangeHealth(-dmg);

        Rigidbody2D rb = collision.GetComponent<Rigidbody2D>();
        if (rb != null)
        {
            Vector2 direction = (collision.transform.position - transform.position).normalized;
            rb.linearVelocity = Vector2.zero;
            rb.AddForce(direction * knockback, ForceMode2D.Impulse);

            PlayerMovement move = collision.GetComponent<PlayerMovement>();
            if (move != null)
                StartCoroutine(DisableMovementTemporarily(move));
        }

       
        //if (audioSource != null && hitSound != null)
           // audioSource.PlayOneShot(hitSound);
    }

    private IEnumerator DisableMovementTemporarily(PlayerMovement move)
    {
        move.enabled = false;
        yield return new WaitForSeconds(knockbackDuration);
        move.enabled = true;
    }

}
