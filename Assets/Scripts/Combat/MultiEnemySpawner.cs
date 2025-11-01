using UnityEngine;

[System.Serializable]
public class SpawnablePrefab
{
    public GameObject prefab;          // The prefab to spawn
    public float unlockDelay = 0f;     // Time (in seconds) before this prefab becomes available
    [HideInInspector] public bool isUnlocked = false; // internal use
}

public class MultiEnemySpawner : MonoBehaviour
{
    [Header("Spawn Settings")]
    public SpawnablePrefab[] prefabs;   // array of prefabs with their own unlock times
    public float spawnCooldown = 5f;    // global cooldown between spawns
    public Transform spawnPoint;        // optional spawn point

    private float nextSpawnTime;
    private float startTime;

    void Start()
    {
        startTime = Time.time;
        nextSpawnTime = Time.time + spawnCooldown;
    }

    void Update()
    {
        // check if new prefabs are now unlocked
        foreach (var p in prefabs)
        {
            if (!p.isUnlocked && Time.time - startTime >= p.unlockDelay)
            {
                p.isUnlocked = true;
                Debug.Log($"{p.prefab.name} is now available to spawn!");
            }
        }

        // spawn logic
        if (Time.time >= nextSpawnTime)
        {
            SpawnRandomAvailablePrefab();
            nextSpawnTime = Time.time + spawnCooldown;
        }
    }

    void SpawnRandomAvailablePrefab()
    {
        // gather all unlocked prefabs
        var available = System.Array.FindAll(prefabs, p => p.isUnlocked && p.prefab != null);
        if (available.Length == 0) return; // none available yet

        // pick random prefab
        var randomPrefab = available[Random.Range(0, available.Length)];

        Vector3 pos = spawnPoint ? spawnPoint.position : transform.position;
        Instantiate(randomPrefab.prefab, pos, Quaternion.identity);

        Debug.Log($"Spawned: {randomPrefab.prefab.name}");
    }
}
