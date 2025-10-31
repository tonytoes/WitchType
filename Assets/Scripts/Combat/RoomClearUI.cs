using UnityEngine;
using System.Collections;

public class RoomClearUI : MonoBehaviour
{
    [Header("UI Settings")]
    public GameObject uiObject;       // drag your "ROOM CLEARED" UI here
    public float displayDuration = 2f; // how long it stays visible

    [Header("Enemy Settings")]
    public string enemyTag = "Enemy"; // all enemies in the room

    private bool hasShown = false;

    private AudioManager audioManager;

    public string sfx;

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
    }

    private void Update()
    {
        if (hasShown) return; // only trigger once

        // check if any enemies exist
        GameObject[] enemies = GameObject.FindGameObjectsWithTag(enemyTag);

        if (enemies.Length == 0)
        {
            ShowUI();
            hasShown = true;
        }
    }

    private void ShowUI()
    {
        if (uiObject != null)
        {
            uiObject.SetActive(true);
            StartCoroutine(HideAfterDelay());
            audioManager?.PlaySFX(sfx);
        }
        else
        {
            Debug.LogWarning("RoomClearUI: UI object not assigned!");
        }
    }

    private IEnumerator HideAfterDelay()
    {
        yield return new WaitForSeconds(displayDuration);
        Destroy(uiObject);  // destroy manually after time
        Destroy(gameObject); // optional: destroy this script holder if you want
    }
}
