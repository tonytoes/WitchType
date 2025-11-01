using UnityEngine;

public class PlayCameraAnimOnce : MonoBehaviour
{
    [Header("Assign your CinemachineCam with Animator here")]
    public Animator cameraAnimator;

    [Header("Animation State Name (optional if you only have one)")]
    public string animationName = "Camera Animation";

    public void PlayAnim()
    {
        if (cameraAnimator == null)
        {
            Debug.LogWarning("Camera Animator not assigned!");
            return;
        }

        // Enable in case it's disabled
        cameraAnimator.enabled = true;

        // Play the animation from the start
        cameraAnimator.Play(animationName, 0, 0f);

        // Start coroutine to disable animator after it finishes
        StartCoroutine(DisableAfterPlay());
    }

    private System.Collections.IEnumerator DisableAfterPlay()
    {
        yield return null; // wait 1 frame so it actually starts
        var info = cameraAnimator.GetCurrentAnimatorStateInfo(0);
        float clipLength = info.length;

        yield return new WaitForSeconds(clipLength);
        cameraAnimator.enabled = false;
    }
}
