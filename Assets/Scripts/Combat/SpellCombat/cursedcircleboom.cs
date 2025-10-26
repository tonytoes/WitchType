using UnityEngine;

public class cursedcircleboom : MonoBehaviour
{
    [Header("SFX")]
    public AudioSource sfxSource;
    public AudioClip boomsound;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        if (sfxSource != null && boomsound != null)
            sfxSource.PlayOneShot(boomsound);
    }

}
