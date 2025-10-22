using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;

public class SpellBookUI : MonoBehaviour
{
    public TMP_Text counterText;
    public GameObject spellBookPanel;
    [SerializeField] private GameObject[] spellSlots;

    [SerializeField] private GameObject[] pages;
    [SerializeField] private GameObject buttonsGroup;
    private int currentPage = 0;

    [SerializeField] private Animator animator;
    private bool isFlipping = false;

    private bool initialized = false;
    private AudioManager audioManager;

    void Update()
    {
        if (!initialized) return;

        if (Input.GetKeyDown(KeyCode.Tab))
        {
            if (!spellBookPanel.activeSelf)
                OpenSpellBook(currentPage); 
            else
                CloseSpellBook();
        }
    }

    private IEnumerator Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        GameManager.Instance.spellBookUI = this;

        spellBookPanel.SetActive(false);

        yield return new WaitUntil(() => GameManager.Instance.spellManager != null);

        UpdateSpellSlot();
        UpdateCounter();
        initialized = true;


        for (int i = 0; i < pages.Length; i++)
            pages[i].SetActive(i == 0);
    }

    public void OpenSpellBook(int pageIndex = 0)
    {
        spellBookPanel.SetActive(true);
        GoToPage(pageIndex, false); 
        UpdateCounter();
        audioManager?.PlaySFX("Click");
    }

    public void CloseSpellBook()
    {
        spellBookPanel.SetActive(false);
        audioManager?.PlaySFX("Click");
    }

    public void GoToPageButton(int targetPage)
    {
        if (!spellBookPanel.activeSelf)
        {
            OpenSpellBook(targetPage);
        }
        else
        {
            GoToPage(targetPage, true);
        }
    }

    private void GoToPage(int targetPage, bool withAnimation)
    {
        if (targetPage < 0 || targetPage >= pages.Length) return;
        if (isFlipping) return;

        if (withAnimation)
            StartCoroutine(FlipPage(targetPage));
        else
        {
            for (int i = 0; i < pages.Length; i++)
                pages[i].SetActive(i == targetPage);

            currentPage = targetPage;
        }
    }

    private IEnumerator FlipPage(int targetPage)
    {
        if (isFlipping) yield break;
        isFlipping = true;

        if (buttonsGroup) buttonsGroup.SetActive(false);

        foreach (var page in pages)
            page.SetActive(false);

        animator.Rebind();
        animator.Update(0.10f);

        animator.SetTrigger("Flip");
       
        yield return new WaitForSeconds(1.30f);

        for (int i = 0; i < pages.Length; i++)
            pages[i].SetActive(i == targetPage);

        if (buttonsGroup) buttonsGroup.SetActive(true);

        currentPage = targetPage;
        isFlipping = false;
    }


    public void UpdateCounter()
    {
        var sm = SpellManager.Instance;
        if (sm == null) return;
        counterText.text = $"SPELL BOOK [{sm.selectedSpells.Count} / {sm.maxSpells}]";
    }

    public void UpdateSpellSlot()
    {
        var spellManager = SpellManager.Instance;

        for (int i = 0; i < spellSlots.Length; i++)
        {
            GameObject slot = spellSlots[i];
            Image iconImage = slot.transform.Find("SpellIcon")?.GetComponent<Image>();
            GameObject lockedOverlay = slot.transform.Find("LockedOverlay")?.gameObject;

            if (i < spellManager.allSpells.Count)
            {
                SpellManager.Spell spell = spellManager.allSpells[i];
                iconImage.sprite = spell.spellIcon;
                bool unlocked = spellManager.unlockedSpells.Contains(spell);

                iconImage.enabled = true;
                lockedOverlay.SetActive(!unlocked);
            }
            else
            {
                iconImage.enabled = false;
                lockedOverlay.SetActive(true);
            }
        }
    }
}
