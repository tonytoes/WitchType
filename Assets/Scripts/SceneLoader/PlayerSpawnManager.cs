using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerSpawnManager : MonoBehaviour
{
    public static Vector2 nextPosition;
    private GameObject player;

    private void OnEnable()
    {
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    private void OnDisable()
    {
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        player = GameObject.FindGameObjectWithTag("Player");

        if (player != null && nextPosition != Vector2.zero)
        {
            player.transform.position = nextPosition;
        }

        nextPosition = Vector2.zero;
    }
}
