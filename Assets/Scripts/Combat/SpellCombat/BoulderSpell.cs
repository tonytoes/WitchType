using UnityEngine;

public class BoulderSpell : MonoBehaviour
{
    [Header("Stats")]
    public float lifetime = 5f;      
    public float maxDistance = 10f;   

    [Header("SFX")]
    public AudioSource sfxSource;
    public AudioClip summonSound;

    private void Start()
    {
        
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player == null)
        {
            Debug.LogWarning("No Player object found with tag 'Player'");
            return;
        }

        Vector3 playerPos = player.transform.position;
        Vector3 mouseWorld = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        mouseWorld.z = 0f;

        
        Vector3 direction = (mouseWorld - playerPos).normalized;

        
        transform.position = playerPos + direction * maxDistance;

        
        if (sfxSource != null && summonSound != null)
            sfxSource.PlayOneShot(summonSound);

        
        Destroy(gameObject, lifetime);
    }
}
