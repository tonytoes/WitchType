using UnityEngine;

public class ResetAnimatorAfterPlay : MonoBehaviour
{
    private Animator anim;
    private bool playedOnce = false;
    private float animLength;

    void Start()
    {
        anim = GetComponent<Animator>();
        if (anim != null)
        {
            // assumes the animation is on the default state
            AnimatorClipInfo[] clipInfo = anim.GetCurrentAnimatorClipInfo(0);
            if (clipInfo.Length > 0)
                animLength = clipInfo[0].clip.length;

            StartCoroutine(ResetAfter(animLength));
        }
    }

    private System.Collections.IEnumerator ResetAfter(float time)
    {
        yield return new WaitForSeconds(time);

        // disable animator to unfreeze transforms
        anim.enabled = false;
    }
}
