using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class PlayerHealth : MonoBehaviour
{
    public int currentHealth;
    public int maxHealth;
    public HealthDisplay health;
    [SerializeField] GameObject gameoverPanel;

    private DamageFlashPlayer _damageFlash;

    public AudioSource sfxSource;      
    public AudioClip moan_when_hit;

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
            if (sfxSource != null && moan_when_hit != null)
            sfxSource.PlayOneShot(moan_when_hit);
        }

        if (health != null)
            health.UpdateHearts(currentHealth, maxHealth);

        if (currentHealth <= 0)
        {
            if (sfxSource != null && moan_when_hit != null)
            sfxSource.PlayOneShot(moan_when_hit);
            GameOver();
        }


    }

    private void GameOver()
    {
        gameObject.SetActive(false);
        gameoverPanel.SetActive(true);  
    }
}