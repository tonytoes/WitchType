using UnityEngine;

public class VisibilityManager : MonoBehaviour
{
    [Header("Objects that should start hidden (only on first load)")]
    [SerializeField] private GameObject[] objectsToHideOnStart;

    [Header("Objects that should start visible (only on first load)")]
    [SerializeField] private GameObject[] objectsToShowOnStart;

    private static bool firstTimeLoaded = true;

    void Start()
    {
        if (firstTimeLoaded)
        {
            // Hide objects only on first scene load
            foreach (var obj in objectsToHideOnStart)
            {
                if (obj != null)
                    obj.SetActive(false);
            }

            // Show objects only on first scene load
            foreach (var obj in objectsToShowOnStart)
            {
                if (obj != null)
                    obj.SetActive(true);
            }

            firstTimeLoaded = false;
        }
        else
        {
            // When reloading / returning to scene
            // Make everything visible again
            foreach (var obj in objectsToHideOnStart)
            {
                if (obj != null)
                    obj.SetActive(true);
            }
        }
    }
}
