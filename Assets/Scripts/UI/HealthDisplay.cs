using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class HealthDisplay : MonoBehaviour
{
    [SerializeField] private Slider healthSlider;
    [SerializeField] private TMP_Text healthText; 
    [SerializeField] private Image fillImage; 

    
    private Color fullHealthColor = new Color32(0x64, 0xBE, 0x66, 0xFF); // #64BE66
    private Color midHealthColor = Color.yellow;
    private Color lowHealthColor = Color.red;

    public void Initialize(int maxHealth)
    {
        if (healthSlider != null)
        {
            healthSlider.maxValue = maxHealth;
            healthSlider.value = maxHealth;
        }

        UpdateHealth(maxHealth);
    }

    public void UpdateHealth(int currentHealth)
    {
        if (healthSlider != null)
            healthSlider.value = currentHealth;

        UpdateHealthText(currentHealth, (int)healthSlider.maxValue);
        UpdateHealthColor(currentHealth, (int)healthSlider.maxValue);
    }

    private void UpdateHealthText(int current, int max)
    {
        if (healthText != null)
            healthText.text = $"{current}/{max}";
    }

    private void UpdateHealthColor(int current, int max)
    {
        if (fillImage == null) return;

        float percentage = (float)current / max;

        if (percentage > 0.5f)
        {
            // blend from yellow → custom green as HP goes from 50% → 100%
            fillImage.color = Color.Lerp(midHealthColor, fullHealthColor, (percentage - 0.5f) * 2f);
        }
        else
        {
            // blend from red → yellow as HP goes from 0% → 50%
            fillImage.color = Color.Lerp(lowHealthColor, midHealthColor, percentage * 2f);
        }
    }
}
