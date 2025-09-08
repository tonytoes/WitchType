using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class SideCursorHover : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
{
    public Image targetImage;

    public void OnPointerEnter(PointerEventData eventData)
    {
        targetImage.gameObject.SetActive(true);
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        targetImage.gameObject.SetActive(false);
    }
}