using UnityEngine;

public class BoulderSpell : MonoBehaviour
{
    [Header("Stats")]
    public float lifetime = 5f;       // how long the boulder stays before disappearing
    public float maxDistance = 10f;   // distance from player to spawn the boulder

    [Header("SFX")]
    public AudioSource sfxSource;
    public AudioClip summonSound;

    private void Start()
    {
        // find the player position
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player == null)
        {
            Debug.LogWarning("No Player object found with tag 'Player'");
            return;
        }

        Vector3 playerPos = player.transform.position;
        Vector3 mouseWorld = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        mouseWorld.z = 0f;

        // direction from player to mouse
        Vector3 direction = (mouseWorld - playerPos).normalized;

        // spawn at max distance
        transform.position = playerPos + direction * maxDistance;

        // play sound if available
        if (sfxSource != null && summonSound != null)
            sfxSource.PlayOneShot(summonSound);

        // destroy boulder after lifetime
        Destroy(gameObject, lifetime);
    }
}
