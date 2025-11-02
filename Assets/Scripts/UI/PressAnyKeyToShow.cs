using UnityEngine;

public class PressAnyKeyToShow : MonoBehaviour
{
    [SerializeField] private GameObject[] objectsToShow;
    private bool triggered = false;
    private AudioManager audioManager;

    // static = shared between scenes, but reset when game restarts
    private static bool hasPressedAnyKey = false;

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();

        // if player already pressed in this session, skip
        if (hasPressedAnyKey)
        {
            gameObject.SetActive(false);
            return;
        }
    }

    void Update()
    {
        if (triggered) return;

        if (Input.anyKeyDown || Input.GetMouseButtonDown(0) || Input.touchCount > 0)
        {
            ShowObjects();
            triggered = true;
            hasPressedAnyKey = true; // mark as done for this session
            gameObject.SetActive(false);
        }
    }

    void ShowObjects()
    {
        audioManager?.PlaySFX("press");
        foreach (GameObject obj in objectsToShow)
        {
            if (obj != null)
                obj.SetActive(true);
        }
    }
}
