using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;
public class SceneTransition : MonoBehaviour
{

    public Animator transition;

    [SerializeField] private PauseMenu pause;
    public float transitionTime = 1f;

    public void Play()
    {
        StartCoroutine(Transition(SceneManager.GetActiveScene().buildIndex + 1));
    }

    public void GoHomeMenu()
    {
        pause.Home();
        StartCoroutine(Transition(0));
    }

    

    IEnumerator Transition(int levelIndex)
    {
        transition.SetTrigger("Start");
        yield return new WaitForSeconds(transitionTime);
        SceneManager.LoadScene(levelIndex);
    }
    
}
