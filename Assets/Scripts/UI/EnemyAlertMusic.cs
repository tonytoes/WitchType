using UnityEngine;
using System.Collections;
using UnityEngine.Audio;

[RequireComponent(typeof(CircleCollider2D))]
public class EnemyAlertMusic : MonoBehaviour
{
    [Header("Detection Settings")]
    public string playerTag = "Player";
    public float detectionRadius = 8f;
    public float maxVolume = 0.5f;
    public float refreshRate = 0.1f;

    [Header("Music Name (must exist in AudioManager.musicSounds or sfxSounds)")]
    public string alertMusicName = "TensionLayer";

    private Transform player;
    private AudioManager audioManager;
    private AudioSource alertSource;
    private bool isTracking = false;
    private bool isPlaying = false;
    private Coroutine fadeCoroutine;
    private Coroutine duckCoroutine;

    private void Start()
    {
        CircleCollider2D col = GetComponent<CircleCollider2D>();
        col.isTrigger = true;
        col.radius = detectionRadius;

        audioManager = FindFirstObjectByType<AudioManager>();
        if (audioManager == null)
        {
            Debug.LogWarning("⚠️ No AudioManager found in scene!");
            return;
        }

        // create a local alert audio source
        alertSource = gameObject.AddComponent<AudioSource>();
        Sound s = System.Array.Find(audioManager.musicSounds, x => x.name == alertMusicName)
                 ?? System.Array.Find(audioManager.sfxSounds, x => x.name == alertMusicName);

        if (s != null)
        {
            alertSource.clip = s.clip;
            alertSource.loop = true;
            alertSource.playOnAwake = false;
            alertSource.volume = 0f;
            alertSource.outputAudioMixerGroup = audioManager.musicSource.outputAudioMixerGroup;
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            player = other.transform;
            isTracking = true;
            if (duckCoroutine != null) StopCoroutine(duckCoroutine);
            duckCoroutine = StartCoroutine(DuckMusic(true)); // 🔉 fade main music down
            CancelInvoke(nameof(UpdateAlertVolume));
            InvokeRepeating(nameof(UpdateAlertVolume), 0f, refreshRate);
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            isTracking = false;
            CancelInvoke(nameof(UpdateAlertVolume));
            if (fadeCoroutine != null) StopCoroutine(fadeCoroutine);
            fadeCoroutine = StartCoroutine(FadeOutAndStop());
            if (duckCoroutine != null) StopCoroutine(duckCoroutine);
            duckCoroutine = StartCoroutine(DuckMusic(false)); // 🔊 restore main music
        }
    }

    private void UpdateAlertVolume()
    {
        if (!isTracking || player == null || alertSource == null || alertSource.clip == null)
            return;

        float distance = Vector2.Distance(transform.position, player.position);
        if (distance <= detectionRadius)
        {
            if (!isPlaying)
            {
                alertSource.Play();
                isPlaying = true;
            }

            float t = 1 - Mathf.Clamp01(distance / detectionRadius);
            alertSource.volume = Mathf.Lerp(0f, maxVolume, t);
        }
    }

    private IEnumerator FadeOutAndStop()
    {
        if (alertSource == null) yield break;

        while (alertSource.volume > 0.01f)
        {
            alertSource.volume -= Time.deltaTime * 1.5f;
            yield return null;
        }

        alertSource.Stop();
        alertSource.volume = 0f;
        isPlaying = false;
    }

    // 🔧 Duck / restore main music via mixer param
    private IEnumerator DuckMusic(bool duck)
    {
        if (audioManager == null || audioManager.volumemixer == null) yield break;

        AudioMixer mixer = audioManager.volumemixer.myMixer;
        float targetDb = duck ? -20f : 0f; // how much to lower the bgm
        float currentDb;
        mixer.GetFloat("music", out currentDb);

        float t = 0;
        while (t < 1f)
        {
            t += Time.deltaTime * 2f; // speed
            float newDb = Mathf.Lerp(currentDb, targetDb, t);
            mixer.SetFloat("music", newDb);
            yield return null;
        }

        mixer.SetFloat("music", targetDb);
    }

    private void OnDestroy()
    {
        CancelInvoke();
        if (fadeCoroutine != null) StopCoroutine(fadeCoroutine);
        if (alertSource != null && alertSource.isPlaying)
            alertSource.Stop();
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(1f, 0.5f, 0f, 0.4f);
        Gizmos.DrawWireSphere(transform.position, detectionRadius);
    }
}
