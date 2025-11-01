using UnityEngine;

public class AnimationDisable : MonoBehaviour
{
    [SerializeField] private Animator[] animators;

    void Start()
    {
        // If you didn’t assign manually, just grab all animators in children
        if (animators == null || animators.Length == 0)
            animators = FindObjectsByType<Animator>(FindObjectsSortMode.None);

        StartCoroutine(CheckAnimEnd());
    }

    private System.Collections.IEnumerator CheckAnimEnd()
    {
        foreach (Animator animator in animators)
        {
            if (animator == null) continue;

            // Wait until animation stops playing
            yield return new WaitUntil(() =>
                animator.GetCurrentAnimatorStateInfo(0).normalizedTime >= 1f &&
                !animator.IsInTransition(0)
            );

            animator.enabled = false;
        }
    }
}
