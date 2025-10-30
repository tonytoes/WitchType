using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;

public class HealthDisplay : MonoBehaviour
{
    [SerializeField] private Slider healthSlider;
    [SerializeField] private TMP_Text healthText;
    [SerializeField] private Image fillImage;        // Green fill
    [SerializeField] private Image damageFillImage;  // Yellow delayed fill

    private Coroutine damageLerpCoroutine;
    private float currentFill = 1f; // normalized 0–1

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

        currentFill = 1f;

        if (damageFillImage != null)
            SetFill(damageFillImage.rectTransform, 1f);

        UpdateHealth(maxHealth);
    }

    public void UpdateHealth(int currentHealth)
    {
        if (healthSlider == null) return;

        float targetFill = (float)currentHealth / healthSlider.maxValue;

        // update green bar instantly
        healthSlider.value = currentHealth;
        UpdateHealthText(currentHealth, (int)healthSlider.maxValue);
        UpdateHealthColor(currentHealth, (int)healthSlider.maxValue);

        // update delayed yellow bar
        if (damageFillImage != null)
        {
            if (damageLerpCoroutine != null)
                StopCoroutine(damageLerpCoroutine);

            damageLerpCoroutine = StartCoroutine(LerpDamageBar(targetFill));
        }

        currentFill = targetFill;
    }

    private IEnumerator LerpDamageBar(float targetFill)
    {
        // delay before easing out
        yield return new WaitForSeconds(0.1f);

        RectTransform rt = damageFillImage.rectTransform;
        float start = rt.localScale.x;
        float t = 0f;
        float speed = 2f;

        while (t < 1f)
        {
            t += Time.deltaTime * speed;
            float newScale = Mathf.Lerp(start, targetFill, t);
            SetFill(rt, newScale);
            yield return null;
        }

        SetFill(rt, targetFill);
    }

    private void SetFill(RectTransform rt, float fill)
    {
        if (rt != null)
            rt.localScale = new Vector3(fill, 1f, 1f);
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
            fillImage.color = Color.Lerp(midHealthColor, fullHealthColor, (percentage - 0.5f) * 2f);
        else
            fillImage.color = Color.Lerp(lowHealthColor, midHealthColor, percentage * 2f);
    }
}
