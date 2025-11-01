using UnityEngine;

public class eventsystemcontroller : MonoBehaviour
{
    private void Awake()
{
    // make sure only one EventSystem exists
    var eventSystems = FindObjectsOfType<UnityEngine.EventSystems.EventSystem>();
    if (eventSystems.Length > 1)
    {
        for (int i = 1; i < eventSystems.Length; i++)
        {
            Destroy(eventSystems[i].gameObject);
        }
    }
}

}
