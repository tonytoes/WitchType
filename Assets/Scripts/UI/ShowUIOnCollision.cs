using UnityEngine;
using System.Collections;

public class ShowUIOnCollision : MonoBehaviour
{
    [Header("UI Settings")]
    public GameObject uiObject;       // drag your UI panel with text + image here
    public float displayDuration = 2f; // how long to show UI

    [Header("Collision Settings")]
    public string triggerTag = "Player"; // only show UI when player collides

    private void Start()
    {
        if (uiObject != null)
            uiObject.SetActive(false); // make sure it starts hidden
    }

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!other.CompareTag(triggerTag)) return;

        ShowUI();
    }

    private void ShowUI()
    {
        if (uiObject == null)
        {
            Debug.LogWarning("ShowUIOnCollision: UI object not assigned!");
            return;
        }

        uiObject.SetActive(true);
        StartCoroutine(HideAfterDelay());
    }

    private IEnumerator HideAfterDelay()
    {
        yield return new WaitForSeconds(displayDuration);
        if (uiObject != null)
            uiObject.SetActive(false);
    }
}
