using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class PlayerNameGate : MonoBehaviour
{
    public GameObject namePanel;
    public TMP_InputField nameInputField;
    public Button submitButton;
    public TMP_Text errorText;

    private const string PLAYER_NAME_KEY = "PlayerName";

    void Start()
    {
        submitButton.onClick.AddListener(OnSubmitName);
        namePanel.SetActive(true);
       // Time.timeScale = 0f; does not actually pause the game.
        nameInputField.text = ""; 
    }

    public void OnSubmitName()
    {
        string enteredName = nameInputField.text.Trim();

        if (string.IsNullOrEmpty(enteredName))
        {
            if (errorText != null) errorText.text = "Please enter a name.";
            return;
        }

        PlayerPrefs.SetString(PLAYER_NAME_KEY, enteredName);
        PlayerPrefs.Save();

        namePanel.SetActive(false);
        Time.timeScale = 1f;
    }

    public static string GetPlayerName() => PlayerPrefs.GetString(PLAYER_NAME_KEY, "Player");
}