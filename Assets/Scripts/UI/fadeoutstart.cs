using UnityEngine;

public class FadeOutStart : MonoBehaviour
{
    [Header("UI Image to Fade")]
    [SerializeField] private GameObject fadeUIImage; // drag your animated UI here

    private void Start()
    {
        if (fadeUIImage == null)
        {
            Debug.LogWarning("FadeOutStart: No fadeUIImage assigned!");
            return;
        }

        // make sure it's visible and active
        fadeUIImage.SetActive(true);

        Animator anim = fadeUIImage.GetComponent<Animator>();
        if (anim != null)
        {
            // get the currently playing animation length
            AnimatorClipInfo[] clipInfo = anim.GetCurrentAnimatorClipInfo(0);
            if (clipInfo.Length > 0)
            {
                float animLength = clipInfo[0].clip.length;
                Destroy(fadeUIImage, animLength);
            }
            else
            {
                // fallback destroy delay if no clip found
                Destroy(fadeUIImage, 1f);
            }
        }
        else
        {
            // no animator? just destroy after 1 second to avoid hanging object
            Destroy(fadeUIImage, 1f);
        }
    }
}
