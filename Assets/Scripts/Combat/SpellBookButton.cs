using UnityEngine;
using UnityEngine.UI;

public class SpellBookButton : MonoBehaviour
{
    public SpellManager.Spell spell;
    public SpellBookUI spellBookUI;
    private Button button;

    void Awake()
    {
        button = GetComponent<Button>();
        button.onClick.AddListener(OnClick);
    }

    void OnClick()
    {
        if (spell != null)
        {
            SpellManager.Instance.SelectSpell(spell);
            spellBookUI.UpdateCounter();
        }
    }
}
