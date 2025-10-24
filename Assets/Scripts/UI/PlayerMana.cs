using UnityEngine;
using UnityEngine.UI;

public class PlayerMana : MonoBehaviour
{
    public static PlayerMana Instance;

    [Header("Mana Settings")]
    public float maxMana = 100f;
    public float currentMana;

    [Header("UI")]
    [SerializeField] private Slider manaSlider;

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
        UpdateManaUI();
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
        {
            manaSlider.value = currentMana / maxMana;
            Debug.Log($"Mana UI Updated: {currentMana}/{maxMana}");
        }
        else
        {
            Debug.LogWarning("Mana Slider not assigned!");
        }
    }


    private void Update()
    {
        RegenerateMana(Time.deltaTime * 1f);
    }
}
