using System.Collections;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;

public class TypeWriterEffect : MonoBehaviour
{
    [SerializeField] private TextMeshProUGUI _textMeshPro;
    [SerializeField] private string[] stringArray;

    [SerializeField] private float timeBtwnChars = 0.05f;

    private AudioManager audioManager;
    [SerializeField] private string type_sfx;
    [SerializeField] private string ambient_sfx;
    [SerializeField] private string end_sfx;


    private int currentIndex = 0;
    private bool isTyping = false;

    [Header("Scene Settings")]
    [SerializeField] private string sceneName = "CH1_L1_R1";

    [Header("UI On End")]
    [SerializeField] private GameObject endUI; // UI GameObject to activate
    [SerializeField] private float delayBeforeNextScene = 3f; // manual timer before loading scene

    void Start()
    {

        audioManager = FindFirstObjectByType<AudioManager>();
        audioManager?.PlaySFX(ambient_sfx);
        if (_textMeshPro == null)
            _textMeshPro = GetComponent<TextMeshProUGUI>();

        if (endUI != null)
            endUI.SetActive(false);

        ShowNextText();
    }

    public void ShowNextText()
    {
        if (isTyping) return;

        if (currentIndex >= stringArray.Length)
        {
            Debug.Log("✅ All lines finished.");
            audioManager?.PlaySFX(end_sfx);

            if (endUI != null)
                endUI.SetActive(true);

            StartCoroutine(LoadSceneAfterDelay());
            return;
        }

        _textMeshPro.text = stringArray[currentIndex];
        _textMeshPro.maxVisibleCharacters = 0;
        StartCoroutine(TypeText());
    }

    private IEnumerator TypeText()
    {
        isTyping = true;

        _textMeshPro.ForceMeshUpdate();
        int totalVisible = _textMeshPro.textInfo.characterCount;
        int counter = 0;

        while (counter <= totalVisible)
        {
            _textMeshPro.maxVisibleCharacters = counter;

            if (counter > 0)
            {
                audioManager?.PlaySFX(type_sfx);
            }

            counter++;
            yield return new WaitForSecondsRealtime(timeBtwnChars);
        }

        isTyping = false;
        currentIndex++;
    }

    private IEnumerator LoadSceneAfterDelay()
    {

        if (_textMeshPro != null)
        {
            Color c = _textMeshPro.color;
            c.a = 0f;
            _textMeshPro.color = c;
        }
        
        yield return new WaitForSecondsRealtime(delayBeforeNextScene);
        
        SceneManager.LoadScene(sceneName);
    }
}
