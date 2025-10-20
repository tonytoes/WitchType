using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class PlayerHealth : MonoBehaviour
{
    public int currentHealth;
    public int maxHealth;
    public HealthDisplay health;
    [SerializeField] private GameObject gameoverPanel;

    private DamageFlashPlayer _damageFlash;

    public AudioSource sfxSource;
    [Header("Hit Sounds")]
    public AudioClip[] moanWhenHitClips; // 👈 array for multiple moans

    void Start()
    {
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
        currentHealth += amount;
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);

        if (amount < 0 && _damageFlash != null)
        {
            _damageFlash.CallDamageFlash();
            PlayRandomMoan(); // 👈 play random sound when damaged
        }

        if (health != null)
            health.UpdateHearts(currentHealth, maxHealth);

        if (currentHealth <= 0)
        {
            PlayRandomMoan(); // 👈 also play random sound on death
            GameOver();
        }
    }

    private void GameOver()
    {
        gameObject.SetActive(false);
        gameoverPanel.SetActive(true);
    }

    private void PlayRandomMoan()
    {
        if (sfxSource != null && moanWhenHitClips != null && moanWhenHitClips.Length > 0)
        {
            int randomIndex = Random.Range(0, moanWhenHitClips.Length);
            sfxSource.PlayOneShot(moanWhenHitClips[randomIndex]);
        }
    }
}
