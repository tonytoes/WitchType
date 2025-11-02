using UnityEngine;

[RequireComponent(typeof(CircleCollider2D))]
public class EnemyAlertMusic : MonoBehaviour
{
    [Header("Detection Settings")]
    public string playerTag = "Player";
    public float detectionRadius = 8f;
    public float maxVolume = 0.5f;
    public float refreshRate = 0.1f; // manual refresh interval (seconds)

    [Header("Music Name (must exist in AudioManager.musicSounds or sfxSounds)")]
    public string alertMusicName = "TensionLayer";

    private Transform player;
    private AudioManager audioManager;
    private AudioSource alertSource;
    private bool isTracking = false;
    private bool isPlaying = false;

    private void Start()
    {
        // setup trigger collider
        CircleCollider2D col = GetComponent<CircleCollider2D>();
        col.isTrigger = true;
        col.radius = detectionRadius;

        // get AudioManager
        audioManager = FindFirstObjectByType<AudioManager>();
        if (audioManager == null)
        {
            Debug.LogWarning("⚠️ No AudioManager found in scene!");
            return;
        }

        // create a local audio source
        alertSource = gameObject.AddComponent<AudioSource>();
        Sound s = System.Array.Find(audioManager.musicSounds, x => x.name == alertMusicName);
        if (s == null)
            s = System.Array.Find(audioManager.sfxSounds, x => x.name == alertMusicName);

        if (s != null)
        {
            alertSource.clip = s.clip;
            alertSource.loop = true;
            alertSource.playOnAwake = false;
            alertSource.volume = 0f;
            alertSource.spatialBlend = 0f; // 2D layering
        }
        else
        {
            Debug.LogWarning($"⚠️ Music '{alertMusicName}' not found in AudioManager.");
        }
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            player = other.transform;
            isTracking = true;
            InvokeRepeating(nameof(UpdateAlertVolume), 0f, refreshRate);
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            isTracking = false;
            CancelInvoke(nameof(UpdateAlertVolume));
            StartCoroutine(FadeOutAndStop());
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

            // closer = louder (inverse distance)
            float t = 1 - Mathf.Clamp01(distance / detectionRadius);
            alertSource.volume = Mathf.Lerp(0f, maxVolume, t);
        }
    }

    private System.Collections.IEnumerator FadeOutAndStop()
    {
        while (alertSource.volume > 0.01f)
        {
            alertSource.volume -= Time.deltaTime * 1.5f;
            yield return null;
        }

        alertSource.Stop();
        isPlaying = false;
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(1f, 0.5f, 0f, 0.4f);
        Gizmos.DrawWireSphere(transform.position, detectionRadius);
    }
}
