using UnityEngine;
using TMPro;
using System.Linq;

public class LeaderboardUI : MonoBehaviour
{
    public Transform contentParent; // Content object inside Scroll View
    public GameObject rowPrefab;    // Prefab with 3 TMP_Text children: rank, name, score

    void OnEnable()
    {
        RefreshUI();
    }

    public void RefreshUI()
    {
        foreach (Transform child in contentParent)
            Destroy(child.gameObject);

        if (LeaderboardManager.Instance == null) return;

        var sorted = LeaderboardManager.Instance.scoreList.scores
            .OrderByDescending(s => s.score)
            .ToList();

        for (int i = 0; i < sorted.Count; i++)
        {
            GameObject row = Instantiate(rowPrefab, contentParent);
            TMP_Text[] texts = row.GetComponentsInChildren<TMP_Text>();

            if (texts.Length >= 3)
            {
                texts[0].text = $"{i + 1}.";
                texts[1].text = sorted[i].playerName;
                texts[2].text = sorted[i].score.ToString();
            }
        }
    }
}