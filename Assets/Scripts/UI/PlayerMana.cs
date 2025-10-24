using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class PlayerMana : MonoBehaviour
{
    public static PlayerMana Instance;

    [Header("Mana Settings")]
    public float maxMana = 100f;
    public float currentMana;

    [Header("UI")]
    [SerializeField] private Slider manaSlider;
    [SerializeField] private TMP_Text manaText; 

    private void Awake()
    {
        if (Instance == null)
            Instance = this;
        else
            Destroy(gameObject);
    }

    private void Start()
    {
        currentMana = maxMana;
        SetupSlider();
        UpdateManaUI();
    }

    private void SetupSlider()
    {
        if (manaSlider != null)
        {
            manaSlider.minValue = 0f;
            manaSlider.maxValue = maxMana;
        }
        else
        {
            Debug.LogWarning("Mana Slider not assigned!");
        }
    }

    public bool HasEnoughMana(float cost)
    {
        return currentMana >= cost;
    }

    public void UseMana(float cost)
    {
        if (HasEnoughMana(cost))
        {
            currentMana -= cost;
            currentMana = Mathf.Clamp(currentMana, 0, maxMana);
            UpdateManaUI();
        }
    }

    public void RegenerateMana(float amount)
    {
        currentMana += amount;
        currentMana = Mathf.Clamp(currentMana, 0, maxMana);
        UpdateManaUI();
    }

    private void UpdateManaUI()
    {
        if (manaSlider != null)
            manaSlider.value = currentMana;

        if (manaText != null)
            manaText.text = $"{Mathf.RoundToInt(currentMana)}"; 
    }

    private void Update()
    {
        RegenerateMana(Time.deltaTime * 2f);
    }
}
