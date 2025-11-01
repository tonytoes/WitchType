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

[System.Serializable]
public class SpawnRateChange
{
    public float timeStamp;   // time in seconds since start when this change occurs
    public float spawnCooldownChange; // how much to add/subtract to spawnCooldown
}

public class MultiEnemySpawner : MonoBehaviour
{
    [Header("Spawn Settings")]
    public SpawnablePrefab[] prefabs;
    public float spawnCooldown = 5f;
    public Transform spawnPoint;

    [Header("Dynamic Spawn Rate Changes")]
    public SpawnRateChange[] spawnRateChanges;

    private float nextSpawnTime;
    private float startTime;

    void Start()
    {
        startTime = Time.time;
        nextSpawnTime = Time.time + spawnCooldown;
    }

    void Update()
    {
        float elapsed = Time.time - startTime;

        // unlock prefabs based on delay
        foreach (var p in prefabs)
        {
            if (!p.isUnlocked && elapsed >= p.unlockDelay)
            {
                p.isUnlocked = true;
                Debug.Log($"{p.prefab.name} is now available to spawn!");
            }
        }

        // apply spawn rate changes if any
        foreach (var change in spawnRateChanges)
        {
            if (elapsed >= change.timeStamp && change.spawnCooldownChange != 0f)
            {
                spawnCooldown -= change.spawnCooldownChange;
                spawnCooldown = Mathf.Max(0.1f, spawnCooldown); // prevent negative or zero cooldown
                Debug.Log($"Spawn cooldown modified by {change.spawnCooldownChange} at time {change.timeStamp}s. New cooldown: {spawnCooldown}");
                
                // mark as applied
                change.spawnCooldownChange = 0f;
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
