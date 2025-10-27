using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class HomeMenu : MonoBehaviour
{
    private AudioManager audioManager;

    [Header("Transition UI")]
    [SerializeField] private GameObject transitionImage; 


    private void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
    }

    public void PlayGame(string sceneName)
    {
        audioManager?.PlaySFX("click");
        StartCoroutine(PlayTransitionAndLoad(sceneName));
    }

    private IEnumerator PlayTransitionAndLoad(string sceneName)
    {
        if (transitionImage != null)
        {
            transitionImage.SetActive(true);
            Animator anim = transitionImage.GetComponent<Animator>();

            if (anim != null)
            {
                anim.SetTrigger("Play");

                yield return null;
                AnimatorStateInfo stateInfo = anim.GetCurrentAnimatorStateInfo(0);
                float clipLength = stateInfo.length;

                
                float waitTime = Mathf.Max(0, clipLength - 0.6f);
                yield return new WaitForSeconds(waitTime);
            }
        }

        SceneManager.LoadScene(sceneName);
    }

    public void OnApplicationQuit()
    {
        audioManager?.PlaySFX("click");
        Application.Quit();
    }
}
