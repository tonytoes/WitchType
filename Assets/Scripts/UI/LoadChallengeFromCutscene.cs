using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadChallengeFromCutscene : MonoBehaviour
{
    public string sceneName = "challenge";
    void OnEnable()
    {
        SceneManager.LoadScene(sceneName,LoadSceneMode.Single);
    }
}
