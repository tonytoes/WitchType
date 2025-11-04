using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Collider2D))]
public class CombatAreaLocker : MonoBehaviour
{
    [Header("Settings")]
    public string enemyTag = "Enemy";
    public string playerTag = "Player";
    public float checkInterval = 0.5f;

    [Header("Objects to Toggle")]
    public GameObject[] objectsToControl;

    private bool isActive = true;
    private readonly List<GameObject> enemiesInZone = new();
    private readonly List<GameObject> playersInZone = new();

    private void Start()
    {
        // ensure collider is trigger
        var col = GetComponent<Collider2D>();
        col.isTrigger = true;

        // start periodic state check
        InvokeRepeating(nameof(CheckCombatState), 0f, checkInterval);
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag(enemyTag))
        {
            if (!enemiesInZone.Contains(other.gameObject))
            {
                enemiesInZone.Add(other.gameObject);
                Debug.Log($"[{name}] Enemy entered: {other.name} at {other.transform.position}");
            }
        }
        else if (other.CompareTag(playerTag))
        {
            if (!playersInZone.Contains(other.gameObject))
            {
                playersInZone.Add(other.gameObject);
                Debug.Log($"[{name}] Player entered: {other.name}");
            }
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag(enemyTag))
        {
            enemiesInZone.Remove(other.gameObject);
            Debug.Log($"[{name}] Enemy left: {other.name}");
        }
        else if (other.CompareTag(playerTag))
        {
            playersInZone.Remove(other.gameObject);
            Debug.Log($"[{name}] Player left: {other.name}");
        }
    }

    private void CheckCombatState()
    {
        // cleanup nulls (destroyed enemies/players)
        enemiesInZone.RemoveAll(e => e == null);
        playersInZone.RemoveAll(p => p == null);

        bool hasEnemies = enemiesInZone.Count > 0;
        bool hasPlayer = playersInZone.Count > 0;

        // log current state
        if (hasEnemies)
        {
            Debug.Log($"[{name}] Enemies inside ({enemiesInZone.Count}):");
            foreach (var enemy in enemiesInZone)
            {
                var pos = enemy.transform.position;
                Debug.Log($"  → {enemy.name} at ({pos.x:F2}, {pos.y:F2})");
            }
        }

        // control objects based on local area
        if (!hasEnemies || !hasPlayer)
        {
            if (isActive)
            {
                SetControlledObjectsActive(false);
                isActive = false;
                Debug.Log($"[{name}] No enemies or player inside → deactivating.");
            }
        }
        else
        {
            if (!isActive)
            {
                SetControlledObjectsActive(true);
                isActive = true;
                Debug.Log($"[{name}] Both enemies + player inside → reactivating.");
            }
        }
    }

    private void SetControlledObjectsActive(bool state)
    {
        foreach (var obj in objectsToControl)
        {
            if (obj != null)
                obj.SetActive(state);
        }
    }
}
