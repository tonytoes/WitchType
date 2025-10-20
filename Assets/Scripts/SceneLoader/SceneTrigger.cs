#if UNITY_EDITOR
using UnityEditor;
#endif
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneTrigger : MonoBehaviour
{
    [Header("Scene To Load")]
    [SerializeField] private Object sceneAsset;
    private string sceneName;

    [Header("New Player Position in Next Scene")]
    [SerializeField] private Vector2 newPlayerPosition;

    public AudioSource sfxSource;        
    public AudioClip DoorSound;

    private void Awake()
    {
#if UNITY_EDITOR
        UpdateSceneName();
#endif
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!other.CompareTag("Player") || string.IsNullOrEmpty(sceneName))
            return;

        if (sfxSource != null && DoorSound != null)
            sfxSource.PlayOneShot(DoorSound);

        PlayerSpawnManager.nextPosition = newPlayerPosition;

        SceneManager.LoadScene(sceneName, LoadSceneMode.Single);
    }

#if UNITY_EDITOR
    private void OnValidate() => UpdateSceneName();

    private void UpdateSceneName()
    {
        if (sceneAsset != null)
        {
            string path = AssetDatabase.GetAssetPath(sceneAsset);
            sceneName = System.IO.Path.GetFileNameWithoutExtension(path);
        }
        else
        {
            sceneName = "";
        }
    }

    private void OnDrawGizmos()
    {
        if (!string.IsNullOrEmpty(sceneName))
        {
            Vector3 worldPos = transform.position + Vector3.up * 1.5f;
            Vector3 screenPos = HandleUtility.WorldToGUIPoint(worldPos);

            GUIStyle style = new GUIStyle
            {
                normal = { textColor = Color.cyan },
                alignment = TextAnchor.MiddleCenter,
                fontSize = 12
            };

            Handles.BeginGUI();
            GUI.Label(new Rect(screenPos.x - 60, screenPos.y - 20, 120, 40),
                $"{sceneName}\nTarget Pos: {newPlayerPosition}", style);
            Handles.EndGUI();
        }
    }
#endif
}
