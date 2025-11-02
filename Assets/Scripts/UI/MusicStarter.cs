using UnityEngine;

public class MusicStarter : MonoBehaviour
{
    private AudioManager audioManager;
    public string music;

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        audioManager?.PlayMusic(music);
    }

   
}
