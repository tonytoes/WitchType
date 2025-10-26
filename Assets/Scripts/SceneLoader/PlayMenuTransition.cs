using UnityEngine;
using System.Collections;

public class PlayMenuTransition : MonoBehaviour
{
    [Header("Transition UI")]
    [SerializeField] private GameObject transitionImage; // assign fade UI image (with Animator)

    public void StartTransition()
    {
        if (transitionImage == null)
        {
            Debug.LogWarning("Transition Image not assigned!");
            return;
        }

        StartCoroutine(PlayTransition());
    }

    private IEnumerator PlayTransition()
    {
        transitionImage.SetActive(true);

        Animator anim = transitionImage.GetComponent<Animator>();
        if (anim != null)
        {
            anim.SetTrigger("Play");

            // wait for the animation to finish
            AnimatorStateInfo stateInfo = anim.GetCurrentAnimatorStateInfo(0);
            float clipLength = stateInfo.length;

            // if animator not yet updated, wait a frame then re-check
            if (clipLength == 0f)
            {
                yield return null;
                stateInfo = anim.GetCurrentAnimatorStateInfo(0);
                clipLength = stateInfo.length;
            }

            yield return new WaitForSeconds(clipLength);
        }
    }
}
