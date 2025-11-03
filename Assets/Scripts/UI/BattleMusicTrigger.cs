using UnityEngine;

[RequireComponent(typeof(BoxCollider2D))]
public class BattleMusicTrigger : MonoBehaviour
{
    [Header("Detection Settings")]
    public string enemyTag = "Enemy";
    public string playerTag = "Player";

    [Header("Music Names (must exist in AudioManager.musicSounds)")]
    public string normalMusicName = "ExplorationTheme"; // default music
    public string battleMusicName = "BattleTheme";      // combat music

    private AudioManager audioManager;
    private int enemiesInside = 0;
    private bool playerInside = false;
    private bool isBattleMusicPlaying = false;

    private void Start()
    {
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
            CheckMusicState();
        }

        if (other.CompareTag(playerTag))
        {
            playerInside = true;
            CheckMusicState();
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag(enemyTag))
        {
            enemiesInside = Mathf.Max(0, enemiesInside - 1);
            CheckMusicState();
        }

        if (other.CompareTag(playerTag))
        {
            playerInside = false;
            CheckMusicState();
        }
    }

    private void CheckMusicState()
    {
        // only play battle music if player is inside *this* trigger
        // and there are enemies here
        if (playerInside && enemiesInside > 0)
        {
            if (!isBattleMusicPlaying)
            {
                audioManager.PlayMusic(battleMusicName);
                isBattleMusicPlaying = true;
                Debug.Log($"🎵 Battle music started in {gameObject.name}");
            }
        }
        else
        {
            if (isBattleMusicPlaying)
            {
                audioManager.PlayMusic(normalMusicName);
                isBattleMusicPlaying = false;
                Debug.Log($"🎵 Returned to normal music in {gameObject.name}");
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
