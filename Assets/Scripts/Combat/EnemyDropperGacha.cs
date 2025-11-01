using UnityEngine;

[System.Serializable]
public enum LootRarity
{
    Common,
    Uncommon,
    Rare,
    Epic,
    Legendary
}

[System.Serializable]
public class LootItem
{
    public GameObject prefab;         // the item prefab
    public LootRarity rarity = LootRarity.Common; // how rare it is
}

public class EnemyDropperGacha : MonoBehaviour
{
    [Header("Loot Drop Settings")]
    [SerializeField] private LootItem[] lootTable;  // all possible drops
    [SerializeField] private float dropDelay = 0.3f;
    [SerializeField] private bool dropOnce = true;

    private bool hasDropped = false;

    private void OnDestroy()
    {
        if (!Application.isPlaying || hasDropped || gameObject.scene.isLoaded == false)
            return;

        hasDropped = true;

        LootItem chosenLoot = GetWeightedRandomLoot();
        if (chosenLoot != null && chosenLoot.prefab != null)
            Instantiate(chosenLoot.prefab, transform.position, Quaternion.identity);
    }


    private void DropRandomLoot()
    {
        // wait slightly before spawning (optional, remove if not needed)
        Invoke(nameof(SpawnLoot), dropDelay);
    }

    private void SpawnLoot()
    {
        LootItem chosenLoot = GetWeightedRandomLoot();
        if (chosenLoot == null || chosenLoot.prefab == null) return;

        Instantiate(chosenLoot.prefab, transform.position, Quaternion.identity);
        Debug.Log($"Dropped: {chosenLoot.prefab.name} ({chosenLoot.rarity})");
    }

    private LootItem GetWeightedRandomLoot()
    {
        int totalWeight = 0;

        foreach (var loot in lootTable)
            totalWeight += GetWeight(loot.rarity);

        if (totalWeight == 0) return null;

        int randomValue = Random.Range(0, totalWeight);
        int cumulative = 0;

        foreach (var loot in lootTable)
        {
            cumulative += GetWeight(loot.rarity);
            if (randomValue < cumulative)
                return loot;
        }

        return lootTable[0];
    }

    private int GetWeight(LootRarity rarity)
    {
        switch (rarity)
        {
            case LootRarity.Common: return 70;
            case LootRarity.Uncommon: return 25;
            case LootRarity.Rare: return 10;
            case LootRarity.Epic: return 3;
            case LootRarity.Legendary: return 1;
            default: return 10;
        }
    }
}
