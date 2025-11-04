using UnityEngine;
using System.Collections;

public class RoomClearUI : MonoBehaviour
{
    [Header("UI Settings")]
    public GameObject uiObject;              // "ROOM CLEARED" UI
    public float displayDuration = 2f;       // how long it stays visible

    [Header("Enemy Settings")]
    public string enemyTag = "Enemy";        // tag for enemies

    [Header("Optional Object Toggle")]
    public GameObject[] toggleObjects;       // objects to show/hide on clear
    public bool setActiveState = true;       // true = enable, false = disable

    private bool hasShown = false;
    private AudioManager audioManager;

    [Header("Audio")]
    public string sfx;

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
    }

    private void Update()
    {
        if (hasShown) return;

        // check if any enemies exist
        GameObject[] enemies = GameObject.FindGameObjectsWithTag(enemyTag);
        if (enemies.Length == 0)
        {
            ShowUI();
            ToggleObjects();
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

    private void ToggleObjects()
    {
        if (toggleObjects == null || toggleObjects.Length == 0) return;

        foreach (GameObject obj in toggleObjects)
        {
            if (obj != null)
                obj.SetActive(setActiveState);
        }
    }

    private IEnumerator HideAfterDelay()
    {
        yield return new WaitForSeconds(displayDuration);
        Destroy(uiObject);
        Destroy(gameObject);
    }
}
