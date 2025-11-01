using UnityEngine;
using TMPro;

public class KillScoreManager : MonoBehaviour
{
    public TMP_Text killScoreText; // assign in inspector
    private int killScore = 0;

    private void Start()
    {
        // Update UI at start
        UpdateKillScoreUI();
    }

    // Call this whenever an enemy dies
    public void AddKill()
    {
        killScore++;
        UpdateKillScoreUI();
    }

    private void UpdateKillScoreUI()
    {
        if (killScoreText != null)
        {
            killScoreText.text = $"{killScore}";
        }
    }
}