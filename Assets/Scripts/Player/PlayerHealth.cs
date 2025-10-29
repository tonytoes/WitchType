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

    public AudioSource sfxSource;
    [Header("Hit Sounds")]
    public AudioClip[] moanWhenHitClips; 

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
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
            health.UpdateHearts(currentHealth, maxHealth);
        }
    }

    public void ChangeHealth(int amount)
    {
        if (shieldActive && amount < 0)
        {
            if (_damageFlash != null)
                _damageFlash.CallShieldFlash(); // <- call blue shield flash instead

            return; // don't take damage
        }

        currentHealth += amount;
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);

        if (amount < 0 && _damageFlash != null)
        {
            _damageFlash.CallDamageFlash();
            PlayRandomMoan(); 
        }

        if (health != null)
            health.UpdateHearts(currentHealth, maxHealth);

        if (currentHealth <= 0)
        {
            PlayRandomMoan(); 
            GameOver();
        }
    }


    private void GameOver()
    {
        audioManager.PlaySFX("death_player");
        gameObject.SetActive(false);
        gameoverPanel.SetActive(true);
    }

    public void RespawnPlayer()
    {
        gameObject.SetActive(true);
        currentHealth = maxHealth;

        // 🧭 move player to last checkpoint if exists
        if (RespawnController.latestRespawnPoint != null)
        {
            transform.position = RespawnController.latestRespawnPoint.position;
        }

        if (health != null)
            health.UpdateHearts(currentHealth, maxHealth);

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

    public void SetShield(bool isActive)
    {
        shieldActive = isActive;
    }

    public bool Shield(bool state) {
        return shieldActive;
    }
}
