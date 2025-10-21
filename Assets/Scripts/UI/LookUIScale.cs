using UnityEngine;

public class LockUIScale : MonoBehaviour
{
    private Vector3 originalScale;

    void Awake()
    {
        originalScale = transform.localScale;
    }

    void LateUpdate()
    {
        if (transform.localScale != originalScale)
            transform.localScale = originalScale;
    }
}
