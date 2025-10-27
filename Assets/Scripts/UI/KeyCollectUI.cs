using UnityEngine;
using System.Collections;

public class KeyCollectUI : MonoBehaviour
{
    public static KeyCollectUI Instance;

    [Header("Existing Popup UI Object")]
    public GameObject popupObject;        // assign your existing TextMeshPro UI object here
    public float popupDuration = 1.5f;    // how long it stays visible
    public string triggerTag = "Player";

    [Header("SFX")]
    public AudioSource sfxSource;
    public AudioClip collectSFX;

    private Animator popupAnimator;

    private void Awake()
    {
        if (Instance == null) Instance = this;
        else Destroy(gameObject);
    }

    private void Start()
    {
        if (popupObject != null)
        {
            popupAnimator = popupObject.GetComponent<Animator>();
            popupObject.SetActive(false); // make sure it starts hidden
        }
    }

    public void ShowPopup()
    {
        if (popupObject == null)
        {
            Debug.LogWarning("KeyCollectUI: Missing popupObject reference!");
            return;
        }

        // play SFX
        if (sfxSource && collectSFX)
            sfxSource.PlayOneShot(collectSFX);

        // show popup
        popupObject.SetActive(true);

        // play animation (if exists)
        if (popupAnimator != null)
            popupAnimator.SetTrigger("Show");

        // hide it again after duration
        StartCoroutine(HidePopupAfterDelay());
    }

    private IEnumerator HidePopupAfterDelay()
    {
        yield return new WaitForSeconds(popupDuration);
        if (popupObject != null)
            popupObject.SetActive(false);
    }
}
