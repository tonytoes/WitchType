using UnityEngine;

public class LinkClicker : MonoBehaviour
{

    public void ClickLink(string url)
    {
        Application.OpenURL(url);
    }
}