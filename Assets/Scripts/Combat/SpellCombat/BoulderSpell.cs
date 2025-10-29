using UnityEngine;

public class BoulderSpell : MonoBehaviour
{
    [Header("Stats")]
    public float lifetime = 5f;
    public float maxDistance = 10f;   
    public float shakeduration = 1f;

    [Header("SFX")]
    private AudioManager audioManager;
    public string sfx;

    private void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player == null)
        {
            return;
        }

        Vector3 playerPos = player.transform.position;
        Vector3 mouseWorld = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        mouseWorld.z = 0f;

        
        Vector3 direction = (mouseWorld - playerPos).normalized;

        
        transform.position = playerPos + direction * maxDistance;


        audioManager?.PlaySFX(sfx);

        CinemachineShake.Instance.ShakeOnce(shakeduration);

        
        Destroy(gameObject, lifetime);
    }
}
