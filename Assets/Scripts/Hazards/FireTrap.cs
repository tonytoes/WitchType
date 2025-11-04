using UnityEngine;
using System.Collections;

public class FireTrap : MonoBehaviour
{
    public float activeDuration = 2f;
    public float inactiveDuration = 2f;
    public int damagePerSecond = 1;
    public Animator anim;

    private Collider2D fireCollider;
    private bool isActive = false;
    private bool isDamaging = false;

    private void Awake()
    {
        fireCollider = GetComponent<Collider2D>();
    }

    private void Start()
    {
        StartCoroutine(TrapCycle());
    }

    private IEnumerator TrapCycle()
    {
        while (true)
        {
            SetActive(true);
            yield return new WaitForSeconds(activeDuration);

            SetActive(false);
            yield return new WaitForSeconds(inactiveDuration);
        }
    }

    private IEnumerator DamageOverTime(PlayerHealth player)
    {
        isDamaging = true;

        while (isActive && player != null)
        {
            player.ChangeHealth(-damagePerSecond);
            yield return new WaitForSeconds(1f);
        }

        isDamaging = false;
    }

    public void SetActive(bool active)
    {
        isActive = active;

        if (anim != null)
            anim.SetBool("isActive", active);

        // play fire sound here

        fireCollider.enabled = active;
    }

    private void OnTriggerStay2D(Collider2D collision)
    {
        if (isActive && collision.CompareTag("Player") && !isDamaging)
        {
            PlayerHealth playerHealth = collision.GetComponent<PlayerHealth>();
            if (playerHealth != null)
            {
                StartCoroutine(DamageOverTime(playerHealth));
            }
        }
    }
}
