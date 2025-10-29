using UnityEngine;

public class cursedcircleboom : MonoBehaviour
{
    [Header("SFX")]
    private AudioManager audioManager;
    public string sfx;
    

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        audioManager?.PlaySFX(sfx);
    }

}
