using UnityEngine;

public class DestroyIfNoEnemies : MonoBehaviour
{
    [Header("Settings")]
    public string enemyTag = "Enemy"; 
    public float checkInterval = 0.5f;

    private void Start()
    {
        // start repeating check
        InvokeRepeating(nameof(CheckForEnemies), 0f, checkInterval);
    }

    private void CheckForEnemies()
    {
        
        GameObject[] enemies = GameObject.FindGameObjectsWithTag(enemyTag);

        if (enemies.Length == 0)
        {
            Debug.Log("Room Cleared");
            Destroy(gameObject);
        }
    }
}
