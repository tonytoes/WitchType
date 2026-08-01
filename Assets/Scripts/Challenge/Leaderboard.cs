using UnityEngine;
using System.Collections.Generic;
using System.Linq;

[System.Serializable]
public class ScoreEntry
{
    public string playerName;
    public int score;

    public ScoreEntry(string name, int score)
    {
        playerName = name;
        this.score = score;
    }
}

[System.Serializable]
public class ScoreList
{
    public List<ScoreEntry> scores = new List<ScoreEntry>();
}

public class LeaderboardManager : MonoBehaviour
{
    public static LeaderboardManager Instance;

    private const string SAVE_KEY = "Leaderboard";
    private const int MAX_ENTRIES = 10;

    public ScoreList scoreList = new ScoreList();

    void Awake()
    {
        Instance = this; // simple singleton, no DontDestroyOnLoad needed for single-scene use
        LoadScores();
    }

    public void AddScore(string playerName, int score)
    {
        scoreList.scores.Add(new ScoreEntry(playerName, score));

        scoreList.scores = scoreList.scores
            .OrderByDescending(s => s.score)
            .Take(MAX_ENTRIES)
            .ToList();

        SaveScores();
    }

    void SaveScores()
    {
        PlayerPrefs.SetString(SAVE_KEY, JsonUtility.ToJson(scoreList));
        PlayerPrefs.Save();
    }

    void LoadScores()
    {
        if (PlayerPrefs.HasKey(SAVE_KEY))
            scoreList = JsonUtility.FromJson<ScoreList>(PlayerPrefs.GetString(SAVE_KEY));
    }
}