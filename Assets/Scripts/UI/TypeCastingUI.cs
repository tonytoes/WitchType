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

    private PauseMenu pausemenu;
    private SpellBookUI spellBookUI;
    public GameObject BookLight2D;

    public Animator animator;
    

    [Header("SFX")]
    public AudioSource sfxSource;
    public AudioClip manawarningsound;
    private AudioManager audioManager;
    
    
   

    private void Start()
    {
        
        audioManager = FindFirstObjectByType<AudioManager>();
        pausemenu = FindFirstObjectByType<PauseMenu>();
        spellBookUI = FindFirstObjectByType<SpellBookUI>();
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
        audioManager?.PlaySFX("Typecast");
        animator.SetBool("CombatPose", true);

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
        spellBookUI.CloseSpellBook();

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
        animator.SetBool("CombatPose", false);
        BookLight2D.SetActive(false);
    }
    
    private void HandleWordComplete()
    {
        DeactivateTypeCasting();
        CastSpell();
    }

    private void CastSpell()
    {
        animator.SetBool("CombatPose", false);
        var spell = SpellManager.Instance.selectedSpells.FirstOrDefault();
        if (spell == null || spell.spellPrefab == null)
            return;

        if (PlayerMana.Instance != null && !PlayerMana.Instance.HasEnoughMana(spell.manaCost))
        {
            if (sfxSource != null && manawarningsound != null)
                sfxSource.PlayOneShot(manawarningsound);
            
            StartCoroutine(ShowManaWarning());
            return; 
        }

        PlayerMana.Instance.UseMana(spell.manaCost);
        Instantiate(spell.spellPrefab, firePoint.position, firePoint.rotation);
    }


    private IEnumerator ShowManaWarning()
    {
        if (isManaWarningActive) yield break;
        isManaWarningActive = true;

        manaWarningText.gameObject.SetActive(true);


        var anim = manaWarningText.GetComponent<Animator>();
        if (anim != null)
            anim.SetTrigger("Show");

        yield return new WaitForSeconds(2f);

        manaWarningText.gameObject.SetActive(false);
        isManaWarningActive = false;
    }
    

    public void ForceDeactivateTypeCasting()
    {
        if (!TypeCastingMode) return; 

        TypeCastingMode = false;


        if (TypeCastUI != null) TypeCastUI.SetActive(false);
        if (playermovement != null) playermovement.enabled = true;
        if (TypeCastField != null) TypeCastField.text = string.Empty;
        if (EventSystem.current != null) EventSystem.current.SetSelectedGameObject(null);
        if (pausemenu != null) pausemenu.Resume();
        if (animator != null) animator.SetBool("CombatPose", false);
        if (BookLight2D != null) BookLight2D.SetActive(false);
    }



}

