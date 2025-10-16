using UnityEngine;

public class GameManager : MonoBehaviour
{
    private static GameManager Instance;
    public GameObject[] persistentObjects;
    void Awake()
    {
        if (Instance == null)
        {
            Destroy(gameObject);
            return;
        }
        else
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            MarkPersistenceObjects();
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

}
