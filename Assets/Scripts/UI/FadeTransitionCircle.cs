using UnityEngine;
using System.Collections;

public class FadeTransitionCircle : MonoBehaviour
{
    [Header("Transition UI")]
    [SerializeField] private GameObject transitionImage; // assign the prefab/UI object with Animator
    [SerializeField] private float transitionDuration = 1f;

    private bool isTransitioning = false;

    private void Start()
    {
        if (transitionImage != null)
            transitionImage.SetActive(false); // hide at start
    }

    public void TriggerTransition()
    {
        if (isTransitioning) return;
        StartCoroutine(PlayTransition());
    }

    private IEnumerator PlayTransition()
    {
        isTransitioning = true;

        // show UI and play animation
        if (transitionImage != null)
        {
            transitionImage.SetActive(true);
            Animator anim = transitionImage.GetComponent<Animator>();
            if (anim != null)
                anim.SetTrigger("Play"); // trigger your fade animation
        }

        yield return new WaitForSeconds(transitionDuration);

        // hide after animation ends
        if (transitionImage != null)
            transitionImage.SetActive(false);

        isTransitioning = false;
    }
}
