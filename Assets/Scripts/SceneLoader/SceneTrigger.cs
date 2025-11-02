#if UNITY_EDITOR
using UnityEditor;
#endif
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;
using UnityEngine.UI;

public class SceneTrigger : MonoBehaviour
{
    [Header("Scene To Load")]
#if UNITY_EDITOR
    [SerializeField] private Object sceneAsset; // only works in editor
#endif
    [SerializeField] private string sceneName; // fallback for build

    [Header("New Player Position in Next Scene")]
    [SerializeField] private Vector2 newPlayerPosition;

    [Header("Delay Settings")]
    [SerializeField] private float delayBeforeLoad = 1f;

    [Header("Transition UI")]
    [SerializeField] private GameObject transitionImage;

    private AudioManager audioManager;
    public string sfx;

#if UNITY_EDITOR
    private void Awake()
    {
        UpdateSceneName();
    }
#endif

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!other.CompareTag("Player") || string.IsNullOrEmpty(sceneName))
            return;

        StartCoroutine(LoadSceneWithDelay());
    }

    private IEnumerator LoadSceneWithDelay()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        audioManager?.PlaySFX(sfx);

        PlayerSpawnManager.nextPosition = newPlayerPosition;

        if (transitionImage != null)
        {
            transitionImage.SetActive(true);

            Animator anim = transitionImage.GetComponent<Animator>();
            if (anim != null)
                anim.SetTrigger("Play");
        }

        yield return new WaitForSeconds(delayBeforeLoad);

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
                $"{sceneName}\nDelay: {delayBeforeLoad}s\nTarget Pos: {newPlayerPosition}", style);
            Handles.EndGUI();
        }
    }
#endif
}
