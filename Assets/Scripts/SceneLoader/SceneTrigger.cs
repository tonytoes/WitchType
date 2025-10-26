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
    [SerializeField] private Object sceneAsset;
    private string sceneName;

    [Header("New Player Position in Next Scene")]
    [SerializeField] private Vector2 newPlayerPosition;

    [Header("Delay Settings")]
    [SerializeField] private float delayBeforeLoad = 1f; // adjustable in inspector

    [Header("Transition UI")]
    [SerializeField] private GameObject transitionImage; // assign your UI image here

    public AudioSource sfxSource;
    public AudioClip DoorSound;

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
        // play SFX immediately
        if (sfxSource != null && DoorSound != null)
            sfxSource.PlayOneShot(DoorSound);

        // store next player position
        PlayerSpawnManager.nextPosition = newPlayerPosition;

        // show transition image and play animation if it exists
        if (transitionImage != null)
        {
            transitionImage.SetActive(true);

            Animator anim = transitionImage.GetComponent<Animator>();
            if (anim != null)
                anim.SetTrigger("Play"); // trigger your fade animation
        }

        // wait for the delay
        yield return new WaitForSeconds(delayBeforeLoad);

        // then load scene
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
                $"{sceneName}\nDelay: {delayBeforeLoad}s\nTarget Pos: {newPlayerPosition}", style);
            Handles.EndGUI();
        }
    }
#endif
}
