using UnityEngine;

public class AnimationRefresher : MonoBehaviour
{
    [SerializeField] private Animator[] animators;
    [SerializeField] private string stateName = "Idle"; // default state to replay

    // if you call this from a button, just hook this up in the button’s OnClick
    public void RefreshAnimations()
    {
        if (animators == null || animators.Length == 0)
            animators = FindObjectsByType<Animator>(FindObjectsSortMode.None);

        foreach (Animator animator in animators)
        {
            if (animator == null) continue;

            // rewind the current state and replay it
            animator.Play(stateName, 0, 0f);
            animator.Update(0f); // force refresh frame
        }

        Debug.Log("All animations refreshed!");
    }
}
