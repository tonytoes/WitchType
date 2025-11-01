using UnityEngine;

[System.Serializable]
public enum SpawnRarity
{
    Common,
    Uncommon,
    Rare
}

[System.Serializable]
public class SpawnablePrefab
{
    public GameObject prefab;          // The prefab to spawn
    public float unlockDelay = 0f;     // Time before it becomes available
    public SpawnRarity rarity = SpawnRarity.Common; // rarity type
    [HideInInspector] public bool isUnlocked = false;
}

public class MultiEnemySpawner : MonoBehaviour
{
    [Header("Spawn Settings")]
    public SpawnablePrefab[] prefabs;
    public float spawnCooldown = 5f;
    public Transform spawnPoint;

    private float nextSpawnTime;
    private float startTime;

    void Start()
    {
        startTime = Time.time;
        nextSpawnTime = Time.time + spawnCooldown;
    }

    void Update()
    {
        // unlock prefabs based on delay
        foreach (var p in prefabs)
        {
            if (!p.isUnlocked && Time.time - startTime >= p.unlockDelay)
            {
                p.isUnlocked = true;
                Debug.Log($"{p.prefab.name} is now available to spawn!");
            }
        }

        // global spawn cooldown
        if (Time.time >= nextSpawnTime)
        {
            SpawnRandomAvailablePrefab();
            nextSpawnTime = Time.time + spawnCooldown;
        }
    }

    void SpawnRandomAvailablePrefab()
    {
        var available = System.Array.FindAll(prefabs, p => p.isUnlocked && p.prefab != null);
        if (available.Length == 0) return;

        // roll weighted random based on rarity
        SpawnablePrefab chosen = GetWeightedRandom(available);

        Vector3 pos = spawnPoint ? spawnPoint.position : transform.position;
        Instantiate(chosen.prefab, pos, Quaternion.identity);
        Debug.Log($"Spawned: {chosen.prefab.name} ({chosen.rarity})");
    }

    SpawnablePrefab GetWeightedRandom(SpawnablePrefab[] available)
    {
        int totalWeight = 0;

        // assign weights based on rarity
        foreach (var p in available)
        {
            totalWeight += GetWeight(p.rarity);
        }

        int randomValue = Random.Range(0, totalWeight);
        int cumulative = 0;

        foreach (var p in available)
        {
            cumulative += GetWeight(p.rarity);
            if (randomValue < cumulative)
                return p;
        }

        return available[0];
    }

    int GetWeight(SpawnRarity rarity)
    {
        switch (rarity)
        {
            case SpawnRarity.Common: return 70;
            case SpawnRarity.Uncommon: return 25;
            case SpawnRarity.Rare: return 5;
            default: return 10;
        }
    }
}
