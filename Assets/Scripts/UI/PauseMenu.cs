//  [小鈎ハレ]  //
using Unity.VisualScripting;
using UnityEngine.SceneManagement;
using UnityEngine;
using UnityEngine.EventSystems;
using System.Collections;

public class PauseMenu : MonoBehaviour
{
    public static bool GameIsPaused = false;
    public GameObject pauseMenuUI;
    public GameObject ButtonPause;
    [SerializeField] private Animator playerAnimator;

    private AudioManager audioManager;

    [Header("Transition UI")]
    [SerializeField] private GameObject transitionImage; // transition image like fade effect


    void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        pauseMenuUI.SetActive(false);
        ButtonPause.SetActive(true);
        GameIsPaused = false;
        Time.timeScale = 1f;
    }

    void Update()
    {
        if (TypeCastingUI.TypeCastingMode) return; // ignore pause input during typing
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            audioManager?.PlaySFX("Pause");

            if (GameIsPaused)
                Resume();
            else
                Pause();
        }
    }

    public void ButtonClickPause()
    {
        if (GameIsPaused)
            Resume();
        else
            Pause();
    }

    public void Resume()
    {
        pauseMenuUI.SetActive(false);
        ButtonPause.SetActive(true);
        Time.timeScale = 1f;
        GameIsPaused = false;
        playerAnimator.enabled = true;

        EventSystem.current.SetSelectedGameObject(null);
    }

    public void Pause()
    {
        pauseMenuUI.SetActive(true);
        ButtonPause.SetActive(false);
        Time.timeScale = 0f;
        GameIsPaused = true;
        playerAnimator.enabled = false;
    }

    public void Home()
    {
        audioManager?.PlaySFX("click");
        Time.timeScale = 1f;
        GameIsPaused = false;
        playerAnimator.enabled = true;

        StartCoroutine(PlayTransitionAndLoad("MAIN MENU"));
    }

    private IEnumerator PlayTransitionAndLoad(string sceneName)
    {
        float transitionTime = 1f; // length of your transition animation

        if (transitionImage != null)
        {
            transitionImage.SetActive(true);
            Animator anim = transitionImage.GetComponent<Animator>();
            if (anim != null)
                anim.SetTrigger("Play");

            yield return new WaitForSeconds(transitionTime);
        }

        SceneManager.LoadScene(sceneName);

        // delay before destroying groupA
        yield return new WaitForSeconds(0.5f);

        if (GameManager.Instance != null)
            GameManager.Instance.DestroyGroupA();
    }


}
