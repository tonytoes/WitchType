using UnityEngine;

[RequireComponent(typeof(BoxCollider2D))]
public class BattleMusicTrigger : MonoBehaviour
{
    [Header("Detection Settings")]
    public string enemyTag = "Enemy";

    [Header("Music Names (must exist in AudioManager.musicSounds)")]
    public string normalMusicName = "ExplorationTheme"; // your chill/default music
    public string battleMusicName = "BattleTheme";      // battle music when enemies are inside

    private AudioManager audioManager;
    private bool isBattleMusicPlaying = false;
    private int enemiesInside = 0;

    private void Start()
    {
        // make sure collider is trigger
        BoxCollider2D col = GetComponent<BoxCollider2D>();
        col.isTrigger = true;

        audioManager = FindFirstObjectByType<AudioManager>();
        if (audioManager == null)
        {
            Debug.LogError("⚠️ AudioManager not found in scene!");
            return;
        }

        // start with normal music
        audioManager.PlayMusic(normalMusicName);
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag(enemyTag))
        {
            enemiesInside++;

            if (!isBattleMusicPlaying)
            {
                audioManager.PlayMusic(battleMusicName);
                isBattleMusicPlaying = true;
            }
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag(enemyTag))
        {
            enemiesInside--;

            if (enemiesInside <= 0)
            {
                enemiesInside = 0;
                audioManager.PlayMusic(normalMusicName);
                isBattleMusicPlaying = false;
            }
        }
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = new Color(1f, 0f, 0f, 0.3f);
        BoxCollider2D box = GetComponent<BoxCollider2D>();
        if (box != null)
            Gizmos.DrawCube(transform.position + (Vector3)box.offset, box.size);
    }
}
