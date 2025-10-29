using UnityEngine;

public class RespawnController : MonoBehaviour
{
    public static Transform latestRespawnPoint;

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            
            latestRespawnPoint = transform;
            Debug.Log("Checkpoint updated to: " + gameObject.name);
        }
    }
}
