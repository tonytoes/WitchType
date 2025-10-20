using UnityEngine;

public class Switch : MonoBehaviour
{
    public Spike[] controlledSpikes;
    public bool isOn = false;
    public Animator animator;
    private bool playerInRange;

    [Header("SFX")]
    public AudioSource sfxSource; 
    public AudioClip sound; 
    


    private void Start()
    {

        
        if (animator != null)
            animator.SetBool("IsOn", isOn);
    }


    private void Update()
    {
        if (playerInRange && Input.GetKeyDown(KeyCode.E))
        {
            ToggleSwitch();
            if (sfxSource != null && sound != null)
            sfxSource.PlayOneShot(sound);
        }
    }

    private void ToggleSwitch()
    {
        isOn = !isOn;

        if (animator != null)
            animator.SetBool("IsOn", isOn);

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
