using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using System.Collections; 
public class TypeCastingUI : MonoBehaviour
{
    public static bool TypeCastingMode = false;

    public PlayerMovement playermovement;
    public PauseMenu pausemenu;
    public Typer typer;
    public Transform firePoint;

    public GameObject TypeCastUI;
    public GameObject spellContainer;
    public TMP_InputField TypeCastField;
    public Image spellIcon;


    public TMP_Text manaWarningText; 
    private bool isManaWarningActive = false;
    
   

    private void Start()
    {
        typer.OnWordComplete += HandleWordComplete;
    }
    void Update()
    {
        if (TypeCastingMode && !TypeCastField.isFocused) return;
        if (Input.GetKeyDown(KeyCode.Return) && SpellManager.Instance.selectedSpells != null)
        {
            if (!TypeCastingMode)
            {
                ActivateTypeCasting();
            }
            else
            {
                DeactivateTypeCasting();
            }
        }
    }

    public void ActivateTypeCasting()
    {
        playermovement.StopMovement();
        TypeCastUI.SetActive(true);
        playermovement.enabled = false;
        TypeCastingMode = true;
        pausemenu.enabled = false;

        var spell = SpellManager.Instance.selectedSpells.FirstOrDefault();
        if (spell != null && spell.spellPrefab != null)
        {
            spellContainer.SetActive(true);
            spellIcon.sprite = spell.spellIcon;
            spellIcon.enabled = true;
        }
        else
        {
            spellContainer.SetActive(false);
            spellIcon.enabled = false;
        }


        typer.ResetWord();

       
    }

    public void DeactivateTypeCasting()
    {
        TypeCastUI.SetActive(false);
        playermovement.enabled = true;
        TypeCastingMode = false;
        pausemenu.enabled = true;
        TypeCastField.text = string.Empty;
        EventSystem.current.SetSelectedGameObject(null);
    }
    
    private void HandleWordComplete()
    {
        DeactivateTypeCasting();
        CastSpell();
    }

    private void CastSpell()
    {
        var spell = SpellManager.Instance.selectedSpells.FirstOrDefault();
        if (spell == null || spell.spellPrefab == null)
            return;

        // 🔥 Check if we have enough mana before casting
        if (PlayerMana.Instance != null && !PlayerMana.Instance.HasEnoughMana(spell.manaCost))
        {
            Debug.Log("❌ Not enough mana to cast " + spell.spellName);
            StartCoroutine(ShowManaWarning());
            return; // no mana = no spell cast
        }

        // ✅ consume mana and spawn spell
        PlayerMana.Instance.UseMana(spell.manaCost);
        Instantiate(spell.spellPrefab, firePoint.position, firePoint.rotation);
    }


    private IEnumerator ShowManaWarning()
    {
        if (isManaWarningActive) yield break; // Prevent overlap
        isManaWarningActive = true;

        manaWarningText.gameObject.SetActive(true);

        // If you use Animator on the TMP text, trigger it here:
        var anim = manaWarningText.GetComponent<Animator>();
        if (anim != null)
            anim.SetTrigger("Show");

        // Wait for animation length (you can adjust)
        yield return new WaitForSeconds(2f);

        manaWarningText.gameObject.SetActive(false);
        isManaWarningActive = false;
    }


}

