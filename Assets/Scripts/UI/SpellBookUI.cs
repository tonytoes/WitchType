using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;

public class SpellBookUI : MonoBehaviour
{
    public GameObject spellBookPanel;
    [SerializeField] private GameObject[] spellSlots;

    [SerializeField] private GameObject[] pages;
    [SerializeField] private GameObject buttonsGroup;
    private int currentPage = 0;

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
        yield return new WaitUntil(() => GameManager.Instance != null && GameManager.Instance.spellManager != null);

        yield return null;
        GameManager.Instance.spellBookUI = this;

        spellBookPanel.SetActive(false);

        yield return new WaitUntil(() => GameManager.Instance.spellManager != null);

        UpdateSpellSlot();
        initialized = true;


        for (int i = 0; i < pages.Length; i++)
            pages[i].SetActive(i == 0);
    }

    public void OpenSpellBook(int pageIndex = 0)
    {
        spellBookPanel.SetActive(true);

        spellBookPanel.GetComponent<RectTransform>().localScale = Vector3.zero;
        StartCoroutine(ScaleAnimation(true));

        GoToPage(pageIndex, false);
        audioManager?.PlaySFX("BookOpen");
    }

    public void CloseSpellBook()
    {
        audioManager?.PlaySFX("BookClose");
        StartCoroutine(ScaleAnimation(false));
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
       
        else
        {
            for (int i = 0; i < pages.Length; i++)
                pages[i].SetActive(i == targetPage);

            currentPage = targetPage;
            GameManager.Instance.spellBookUI?.RefreshAllToggles();
        }
    }

    private IEnumerator ScaleAnimation(bool opening)
    {
        RectTransform rect = spellBookPanel.GetComponent<RectTransform>();
        Vector3 startScale = rect.localScale;
        Vector3 endScale = opening ? Vector3.one : Vector3.zero; 
        float duration = 0.25f; 
        float time = 0f;

        while (time < duration)
        {
            time += Time.unscaledDeltaTime; 
            float t = Mathf.SmoothStep(0, 1, time / duration);
            rect.localScale = Vector3.Lerp(startScale, endScale, t);
            yield return null;
        }

        rect.localScale = endScale;

        if (!opening)
            spellBookPanel.SetActive(false);
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

    public void RefreshAllToggles()
    {
        var toggles = Resources.FindObjectsOfTypeAll<ToggleSpellBook>(); 
        var spellManager = SpellManager.Instance;
        if (spellManager == null) return;

        foreach (var toggle in toggles)
        {
            if (toggle == null || toggle.selectedBorderImage == null) continue;
            if (toggle.spellIndex < 0 || toggle.spellIndex >= spellManager.allSpells.Count) continue;

            var spell = spellManager.allSpells[toggle.spellIndex];
            toggle.selectedBorderImage.enabled = spellManager.selectedSpells.Contains(spell);
        }
    }

}
