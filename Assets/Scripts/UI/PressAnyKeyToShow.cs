using UnityEngine;

public class PressAnyKeyToShow : MonoBehaviour
{
    [SerializeField] private GameObject[] objectsToShow;

    private bool triggered = false;
    private AudioManager audioManager;

    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
    }
    void Update()
    {
        if (triggered) return;

        // Detect any key press, mouse click, or screen touch
        if (Input.anyKeyDown || Input.GetMouseButtonDown(0) || Input.touchCount > 0)
        {
            ShowObjects();
            triggered = true;
            gameObject.SetActive(false); // disable this script's GameObject
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
