using System;
using UnityEngine;
using UnityEngine.SceneManagement;

public class HomeMenu : MonoBehaviour
{
    private AudioManager audioManager;

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
    }

    public void PlayGame(string sceneName)
    {
        audioManager?.PlaySFX("click");
        SceneManager.LoadScene(sceneName);
    }


    public void OnApplicationQuit()
    {
        audioManager?.PlaySFX("click");
        Application.Quit();
    }
}
