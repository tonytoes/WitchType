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
    public Typer typer;
    public Transform firePoint;

    public GameObject TypeCastUI;
    public GameObject spellContainer;
    public TMP_InputField TypeCastField;
    public Image spellIcon;


    public TMP_Text manaWarningText;
    private bool isManaWarningActive = false;

    [SerializeField] private PauseMenu pausemenu;
    

    [Header("SFX")]
    public AudioSource sfxSource;
    public AudioClip manawarningsound;
    
   

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
        EventSystem.current.sendNavigationEvents = false;
        playermovement.StopMovement();
        TypeCastUI.SetActive(true);
        playermovement.enabled = false;
        TypeCastingMode = true;
        

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

        pausemenu.Resume();

        typer.ResetWord();

    }

    public void DeactivateTypeCasting()
    {
        
        EventSystem.current.sendNavigationEvents = true;
        TypeCastUI.SetActive(false);
        playermovement.enabled = true;
        TypeCastingMode = false;
        TypeCastField.text = string.Empty;
        EventSystem.current.SetSelectedGameObject(null);
        pausemenu.Resume();
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
            if (sfxSource != null && manawarningsound != null)
                sfxSource.PlayOneShot(manawarningsound);
            
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

