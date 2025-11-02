using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class VolumeSettings : MonoBehaviour
{
    [SerializeField] public AudioMixer myMixer;
    [SerializeField] public Slider musicSlider;
    [SerializeField] public Slider SFXSlider;

    public void Start()
    {
        if (PlayerPrefs.HasKey("musicVolume"))
        {
            LoadVolume();
        }
        else
        {
            SetMusicVolume();
            SetSFXVolume();
        }
    }

    public void SetMusicVolume()
    {
        float volume = musicSlider.value;
        myMixer.SetFloat("music", Mathf.Log10(volume) * 20);
        PlayerPrefs.SetFloat("musicVolume", volume);
    }

    public void SetSFXVolume()
    {
        float volume = SFXSlider.value;
        myMixer.SetFloat("SFX", Mathf.Log10(volume) * 20);
        PlayerPrefs.SetFloat("SFXVolume", volume);
    }

    public void LoadVolume()
    {
        if (musicSlider == null || SFXSlider == null) return;

        musicSlider.value = PlayerPrefs.GetFloat("musicVolume", 1f);
        SFXSlider.value = PlayerPrefs.GetFloat("SFXVolume", 1f);
        SetMusicVolume();
        SetSFXVolume();
    }

    // ===== Mute / Unmute =====
    private float lastMusicVolume = 1f;
    private float lastSFXVolume = 1f;
    private bool isMusicMuted = false;
    private bool isSFXMuted = false;

    public void MuteMusic()
    {
        if (isMusicMuted) return;

        lastMusicVolume = musicSlider.value;
        musicSlider.value = 0;
        SetMusicVolume();
        musicSlider.interactable = false; // 🔒 lock slider
        isMusicMuted = true;
    }

    public void UnmuteMusic()
    {
        if (!isMusicMuted) return;

        musicSlider.value = lastMusicVolume;
        SetMusicVolume();
        musicSlider.interactable = true; // 🔓 unlock slider
        isMusicMuted = false;
    }

    public void MuteSFX()
    {
        if (isSFXMuted) return;

        lastSFXVolume = SFXSlider.value;
        SFXSlider.value = 0;
        SetSFXVolume();
        SFXSlider.interactable = false; // 🔒 lock slider
        isSFXMuted = true;
    }

    public void UnmuteSFX()
    {
        if (!isSFXMuted) return;

        SFXSlider.value = lastSFXVolume;
        SetSFXVolume();
        SFXSlider.interactable = true; // 🔓 unlock slider
        isSFXMuted = false;
    }

    
}
