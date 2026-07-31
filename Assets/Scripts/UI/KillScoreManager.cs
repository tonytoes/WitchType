using UnityEngine;
using TMPro;

public class KillScoreManager : MonoBehaviour
{
    public TMP_Text killScoreText; // assign in inspector
    public TMP_Text highScoreText; // optional — assign if you want to display high score

    private int killScore = 0;
    private int highScore = 0;

    private const string HighScoreKey = "HighScore";

    private void Start()
    {
        // Load saved high score
        highScore = PlayerPrefs.GetInt(HighScoreKey, 0);

        UpdateKillScoreUI();
        UpdateHighScoreUI();
    }

    // Call this whenever an enemy dies
    public void AddKill()
    {
        killScore++;
        UpdateKillScoreUI();

        // Check if player beats the high score
        if (killScore > highScore)
        {
            highScore = killScore;
            PlayerPrefs.SetInt(HighScoreKey, highScore);
            PlayerPrefs.Save();
            UpdateHighScoreUI();
        }
    }

    private void UpdateKillScoreUI()
    {
        if (killScoreText != null)
            killScoreText.text = killScore.ToString();
    }

    private void UpdateHighScoreUI()
    {
        if (highScoreText != null)
            highScoreText.text = $"{highScore}";
    }

    // Optional: reset high score manually (e.g., for debugging)
    public void ResetHighScore()
    {
        PlayerPrefs.DeleteKey(HighScoreKey);
        highScore = 0;
        UpdateHighScoreUI();
    }

    public void callLeaderboard()
    {
        string playerName = PlayerNameGate.GetPlayerName();
        LeaderboardManager.Instance.AddScore(playerName, killScore);
    }
}
