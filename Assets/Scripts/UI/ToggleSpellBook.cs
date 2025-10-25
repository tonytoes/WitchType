using UnityEngine;
using UnityEngine.UI;
using System.Linq;

public class ToggleSpellBook : MonoBehaviour
{
    public int spellIndex;
    public Image selectedBorderImage;

    private void Start()
    {
        selectedBorderImage.enabled = false;
    }

    public void Toggle()
    {
        var spellManager = SpellManager.Instance;
        if (spellManager == null) return;

        if (spellIndex >= 0 && spellIndex < spellManager.allSpells.Count)
        {
            var spell = spellManager.allSpells[spellIndex];

            if (spellManager.unlockedSpells.Contains(spell))
            {
                spellManager.SelectOnly(spell);

                var toggles = Object.FindObjectsByType<ToggleSpellBook>(FindObjectsSortMode.None);
                foreach (var toggle in toggles)
                {
                    var s = spellManager.allSpells[toggle.spellIndex];
                    toggle.selectedBorderImage.enabled = spellManager.selectedSpells.Contains(s);
                }
            }
        }
    }
}
