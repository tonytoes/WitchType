using UnityEngine;
using System.Collections;

public class CollectMana : MonoBehaviour
{
    [Header("Mana Settings")]
    public float manaAmount = 20f;          
    public float destroyDelay = 1f;         

    [Header("SFX")]
    public AudioSource sfxSource;
    public AudioClip pickupSound;

    [Header("UI")]
    [SerializeField] private GameObject _manaPanel; 
    [SerializeField] private float _panelDuration = 0.25f; 

    [Header("Visuals")]
    [SerializeField] private GameObject visualChild; // sprite child
    [SerializeField] private GameObject lightChild;  // Light2D child

    private Animator anim;

    private void Start()
    {
        if (visualChild != null)
            anim = visualChild.GetComponent<Animator>();
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            // Increase player mana
            PlayerMana playerMana = collision.GetComponent<PlayerMana>();
            if (playerMana != null)
            {
                playerMana.RegenerateMana(manaAmount);
            }

            // Play pickup effects
            if (anim != null)
                anim.Play("ManaEffect");

            if (sfxSource != null && pickupSound != null)
                sfxSource.PlayOneShot(pickupSound);

            if (_manaPanel != null)
                StartCoroutine(ShowPanel());

            // Disable collider so it can't trigger again
            Collider2D col = GetComponent<Collider2D>();
            if (col != null) col.enabled = false;

            // Hide sprite
            if (visualChild != null)
            {
                SpriteRenderer sr = visualChild.GetComponent<SpriteRenderer>();
                if (sr != null) sr.enabled = false;
            }

            // Hide or destroy the Light2D child immediately
            if (lightChild != null)
            {
                lightChild.SetActive(false); // or Destroy(lightChild); if you prefer
            }

            // Destroy parent after effects
            StartCoroutine(DestroyAfterEffects());
        }
    }

    private IEnumerator ShowPanel()
    {
        _manaPanel.SetActive(true);
        yield return new WaitForSeconds(_panelDuration);
        _manaPanel.SetActive(false);
    }

    private IEnumerator DestroyAfterEffects()
    {
        float waitTime = Mathf.Max(destroyDelay, _panelDuration);
        yield return new WaitForSeconds(waitTime);
        Destroy(gameObject);
    }
}
