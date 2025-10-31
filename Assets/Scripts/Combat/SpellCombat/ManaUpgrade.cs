using UnityEngine;
using System.Collections;

public class ManaUpgrade : MonoBehaviour
{
    [Header("Mana Settings")]
    public float maxManaIncrease = 10f;     // how much to increase player's max mana cap
    public float destroyDelay = 1f;         

    [Header("UI")]
    [SerializeField] private GameObject _manaPanel; 
    [SerializeField] private float _panelDuration = 0.25f; 

    [Header("Visuals")]
    [SerializeField] private GameObject visualChild; 
    [SerializeField] private GameObject lightChild;  

    private Animator anim;
    public string sfx;
    private AudioManager audioManager;

    private void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        if (visualChild != null)
            anim = visualChild.GetComponent<Animator>();
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (!collision.CompareTag("Player")) return;

        PlayerMana playerMana = collision.GetComponent<PlayerMana>();
        if (playerMana != null)
        {
            // increase max mana cap
            playerMana.IncreaseMaxMana(maxManaIncrease);

            // instantly refill to full
            playerMana.RefillToFull();
        }

        // play pickup effects
        if (anim != null)
            anim.Play("ManaEffect");

        audioManager?.PlaySFX(sfx);

        if (_manaPanel != null)
            StartCoroutine(ShowPanel());

        Collider2D col = GetComponent<Collider2D>();
        if (col != null) col.enabled = false;

        if (visualChild != null)
        {
            SpriteRenderer sr = visualChild.GetComponent<SpriteRenderer>();
            if (sr != null) sr.enabled = false;
        }

        if (lightChild != null)
            lightChild.SetActive(false);

        StartCoroutine(DestroyAfterEffects());
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
