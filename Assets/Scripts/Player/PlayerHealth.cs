using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class PlayerHealth : MonoBehaviour
{
    public int currentHealth;
    public int maxHealth;
    public HealthDisplay health;
    private bool shieldActive = false;
    [SerializeField] private GameObject gameoverPanel;

    private DamageFlashPlayer _damageFlash;
    private AudioManager audioManager;
    private TypeCastingUI typeCast;

    [SerializeField] private GameObject bookbug1;
    [SerializeField] private GameObject bookbug2;



    public AudioSource sfxSource;
    [Header("Hit Sounds")]
    public AudioClip[] moanWhenHitClips; 

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        typeCast = FindFirstObjectByType<TypeCastingUI>();
        StartCoroutine(InitializeHealthUI());
        _damageFlash = GetComponent<DamageFlashPlayer>();
    }

    private IEnumerator InitializeHealthUI()
    {
        yield return new WaitUntil(() => gameObject.scene.isLoaded);

        currentHealth = maxHealth;

        yield return null;

        if (health != null)
        {
            health.Initialize(maxHealth);
            health.UpdateHealth(currentHealth);
        }
    }

    public void ChangeHealth(int amount)
    {
        if (shieldActive && amount < 0)
        {
            if (_damageFlash != null)
                _damageFlash.CallShieldFlash(); // <- blue flash when shielded
            return;
        }

        currentHealth += amount;
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);

        if (amount < 0 && _damageFlash != null)
        {
            _damageFlash.CallDamageFlash();
            PlayRandomMoan();
        }

        if (health != null)
            health.UpdateHealth(currentHealth);

        if (currentHealth <= 0)
        {
            PlayRandomMoan();
            GameOver();
        }
    }
    

    public void IncreaseMaxHealth(int amount)
    {
        maxHealth += amount;
        currentHealth = maxHealth;

        if (health != null)
        {
            health.Initialize(maxHealth);
            health.UpdateHealth(currentHealth);
        }
    }

    private void GameOver()
    {
        audioManager.PlaySFX("death_player");
        typeCast.DeactivateTypeCasting();
        gameObject.SetActive(false);
        gameoverPanel.SetActive(true);
        typeCast?.ForceDeactivateTypeCasting();
        bookbug1.SetActive(false);
        bookbug2.SetActive(false);
    }



    public void RespawnPlayer()
    {

        bookbug1.SetActive(false);
        bookbug2.SetActive(false);
        
        gameObject.SetActive(true);
        currentHealth = maxHealth;

        if (RespawnController.latestRespawnPoint != null)
            transform.position = RespawnController.latestRespawnPoint.position;

        if (health != null)
        {
            health.Initialize(maxHealth);
            health.UpdateHealth(currentHealth);
        }

        if (PlayerMana.Instance != null)
        PlayerMana.Instance.RefillToFull();

        if (gameoverPanel != null)
            gameoverPanel.SetActive(false);

        if (_damageFlash != null)
            _damageFlash.ResetFlashState();

        audioManager.PlaySFX("respawn_player");
    }

    private void PlayRandomMoan()
    {
        if (sfxSource != null && moanWhenHitClips != null && moanWhenHitClips.Length > 0)
        {
            int randomIndex = Random.Range(0, moanWhenHitClips.Length);
            sfxSource.PlayOneShot(moanWhenHitClips[randomIndex]);
        }
    }

    public void SetShield(bool isActive) => shieldActive = isActive;
    public bool Shield(bool state) => shieldActive;
}
