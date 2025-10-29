using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class SpellManager : MonoBehaviour
{
    public static SpellManager Instance;
    public List<Spell> selectedSpells = new List<Spell>();
    public List<Spell> unlockedSpells = new List<Spell>();
    public List<Spell> allSpells;
    public int maxSpells = 1;

    private AudioManager audioManager;

    [Header("UI")]
    public TextMeshProUGUI selectedSpellText; 
    public TextMeshProUGUI manaCostText;

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
    }
    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            transform.parent = null;
            DontDestroyOnLoad(gameObject);
        }
        else if (Instance != this)
        {
            Destroy(gameObject);
            return;
        }
    }

    public void SelectSpell(Spell spell)
    {
        if (selectedSpells.Count < maxSpells && !selectedSpells.Contains(spell))
        {
            selectedSpells.Add(spell);
            UpdateSelectedSpellUI(spell.spellName, spell.manaCost);
            
        }
    }

    public void DeselectSpell(Spell spell)
    {
        if (selectedSpells.Contains(spell))
        {
            selectedSpells.Remove(spell);
            if (selectedSpells.Count > 0)
            {
                Spell next = selectedSpells[0];
                UpdateSelectedSpellUI(next.spellName, next.manaCost);
                
            }
            else
            {
                UpdateSelectedSpellUI("", 0);
            }
        }
    }

    public void UnlockSpell(Spell spell)
    {
        if (!unlockedSpells.Contains(spell))
        {
            unlockedSpells.Add(spell);
            var ui = GameManager.Instance.spellBookUI;
            if (ui != null && ui.isActiveAndEnabled)
            {
                ui.UpdateSpellSlot();
            }
        }
    }

    public void ToggleSpellByIndex(int index)
    {
        if (index >= 0 && index < allSpells.Count)
        {
            Spell spell = allSpells[index];

            if (!unlockedSpells.Contains(spell))
                return;

            if (selectedSpells.Contains(spell))
            {
                selectedSpells.Remove(spell);
                if (selectedSpells.Count > 0)
                {
                    Spell next = selectedSpells[0];
                    UpdateSelectedSpellUI(next.spellName, next.manaCost);
                    
                }
                else
                {
                    UpdateSelectedSpellUI("", 0);
                    
                }
            }
            else if (selectedSpells.Count < maxSpells)
            {
                selectedSpells.Add(spell);
                UpdateSelectedSpellUI(spell.spellName, spell.manaCost);
            }
        }
    }

    public void SelectOnly(Spell spell)
    {
        selectedSpells.Clear();
        selectedSpells.Add(spell);
        UpdateSelectedSpellUI(spell.spellName, spell.manaCost);
    }

    private void UpdateSelectedSpellUI(string spellName, float manaCost)
    {
        if (selectedSpellText != null)
        {
            if (string.IsNullOrEmpty(spellName))
            {
                selectedSpellText.text = "";
            }
            else
            {
                // find current selected spell
                Spell currentSpell = selectedSpells.Count > 0 ? selectedSpells[selectedSpells.Count - 1] : null;

                selectedSpellText.text = spellName;

                if (currentSpell != null)
                {
                    ColorUtility.TryParseHtmlString("#A020F0", out Color purple);    // AOE
                    ColorUtility.TryParseHtmlString("#b33029ff", out Color red);       // Projectile
                    ColorUtility.TryParseHtmlString("#4CD964", out Color green);     // Support
                    ColorUtility.TryParseHtmlString("#A1A1A1", out Color white);     // Default

                    switch (currentSpell.spellType.ToLower())
                    {
                        case "aoe":
                            selectedSpellText.color = purple;
                            break;
                        case "projectile":
                            selectedSpellText.color = red;
                            break;
                        case "support":
                            selectedSpellText.color = green;
                            break;
                        default:
                            selectedSpellText.color = white;
                            break;
                    }
                }

                audioManager?.PlaySFX("selectspell");
            }
        }

        if (manaCostText != null)
        {
            manaCostText.text = manaCost > 0 ? $"{manaCost}" : "";
        }
    }



    [System.Serializable]
    public class Spell
    {
        [Header("Importnat Details")]
        public string spellName;
        public Sprite spellIcon;
        public GameObject spellPrefab;
        public float manaCost = 0f;

        [Header("Description Details")]
        public string spellType;
        public string spellDescription;
        public int spellDamage;
        public int spellSpeed;
        public float spellKnockback;
        public string spellStun = "0s";
        public int spellRange;
        public int spellRadius;
        public int spellHealAmount;
        public string Duration = "0s";
        public bool AOE;
        public bool Projectile;
        public bool Heal;
        public bool ShieldorRock;

    }
}
