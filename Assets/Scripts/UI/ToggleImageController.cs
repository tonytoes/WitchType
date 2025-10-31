using UnityEngine;
using UnityEngine.UI;

public class ReverseToggle : MonoBehaviour
{
    public Toggle toggle;
    public GameObject iamge1;
    public GameObject iamge2;

    private const string TOGGLE_KEY = "ReverseToggleState";

    void Start()
    {
        // Load saved toggle state (default = true)
        bool savedState = PlayerPrefs.GetInt(TOGGLE_KEY, 1) == 1;
        toggle.isOn = savedState;

        toggle.onValueChanged.AddListener(OnToggleChanged);
        OnToggleChanged(toggle.isOn); // apply immediately
    }

    void OnToggleChanged(bool isOn)
    {
        // Reverse logic: active when toggle is off
        iamge1.SetActive(!isOn);
        iamge2.SetActive(!isOn);

        // Save state
        PlayerPrefs.SetInt(TOGGLE_KEY, isOn ? 1 : 0);
        PlayerPrefs.Save();
    }

    void OnDestroy()
    {
        toggle.onValueChanged.RemoveListener(OnToggleChanged);
    }
}
