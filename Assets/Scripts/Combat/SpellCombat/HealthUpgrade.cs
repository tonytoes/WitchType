using UnityEngine;
using System.Collections;

public class HealthUpgrade : MonoBehaviour
{
    [Header("Health Settings")]
    public int healthIncrease = 20;      // amount to increase max health
    public float destroyDelay = 1f;      // delay before destroying object

    [Header("UI")]
    [SerializeField] private GameObject _healthPanel;
    [SerializeField] private float _panelDuration = 0.25f; 
    public GameObject healEffectPrefab;

    [Header("Visuals")]
    [SerializeField] private GameObject visualChild; // sprite child
    [SerializeField] private GameObject lightChild;  // Light2D child

    [Header("SFX")]
    public string sfx;
    private AudioManager audioManager;
    private Animator anim;

    private void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        if (visualChild != null)
            anim = visualChild.GetComponent<Animator>();
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {

             if (healEffectPrefab != null)
            {
                // detach it from parent so it won't get destroyed
                healEffectPrefab.transform.SetParent(null);

                // activate the heal effect
                healEffectPrefab.SetActive(true);
            }
            else
            {
                Debug.LogWarning("HealthPotionCollector: Heal prefab not assigned!");
            }

            

            // Debug
            Debug.Log("Health Upgrade picked up!");

            // Apply health increase
            PlayerHealth player = other.GetComponent<PlayerHealth>();
            if (player != null)
            {
                player.IncreaseMaxHealth(healthIncrease);
            }

            // Play animation + sfx
            if (anim != null)
                anim.Play("HealthUpgradeEffect");

            audioManager?.PlaySFX(sfx);

            // Show panel
            if (_healthPanel != null)
                StartCoroutine(ShowPanel());

            // Disable collider so it can’t trigger again
            Collider2D col = GetComponent<Collider2D>();
            if (col != null)
                col.enabled = false;

            // Hide visuals
            if (visualChild != null)
            {
                SpriteRenderer sr = visualChild.GetComponent<SpriteRenderer>();
                if (sr != null)
                    sr.enabled = false;
            }

            // Hide or disable light
            if (lightChild != null)
                lightChild.SetActive(false);

            // Destroy parent after delay
            StartCoroutine(DestroyAfterEffects());
        }
    }

    private IEnumerator ShowPanel()
    {
        _healthPanel.SetActive(true);
        yield return new WaitForSeconds(_panelDuration);
        _healthPanel.SetActive(false);
    }

    private IEnumerator DestroyAfterEffects()
    {
        float waitTime = Mathf.Max(destroyDelay, _panelDuration);
        yield return new WaitForSeconds(waitTime);
        Destroy(gameObject);
    }
}
