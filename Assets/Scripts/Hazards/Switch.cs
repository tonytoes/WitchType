using UnityEngine;

public class Switch : MonoBehaviour
{
    public Spike[] controlledSpikes;
    public bool isOn = false;
    public Animator animator;
    public AudioSource audioSource;
    public AudioClip switchSound;

    private bool playerInRange;

    private void Update()
    {
        if (playerInRange && Input.GetKeyDown(KeyCode.E))
        {
            ToggleSwitch();
        }
    }

    private void ToggleSwitch()
    {
        isOn = !isOn;

        if (animator != null)
            animator.SetBool("IsOn", isOn);

        if (audioSource != null && switchSound != null)
            audioSource.PlayOneShot(switchSound);

        foreach (var spike in controlledSpikes)
        {
            if (spike != null)
                spike.SetActive(!isOn); 
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
            playerInRange = true;
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
            playerInRange = false;
    }
}
