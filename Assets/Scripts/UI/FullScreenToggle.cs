using UnityEngine;

public class FullScreenToggle : MonoBehaviour
{
    public void Fullscreen (bool is_fullscreen)
    {
        Screen.fullScreen = is_fullscreen;
    }
}
