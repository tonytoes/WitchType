using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static GameManager Instance;
    public GameObject[] persistentObjects;
    
    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            MarkPersistenceObjects();
        }
        else if (Instance != null)
        {
            CleanUpAndDestroy();
            return;
        }
    }

    private void MarkPersistenceObjects()
    {
        foreach (GameObject obj in persistentObjects)
        {
            if (obj != null)
            {
                DontDestroyOnLoad(obj);
            }
        }
    }
    
    private void CleanUpAndDestroy()
    {
        foreach(GameObject obj in persistentObjects)
        {
           Destroy(obj);
        }
        Destroy(gameObject);
    }

}
