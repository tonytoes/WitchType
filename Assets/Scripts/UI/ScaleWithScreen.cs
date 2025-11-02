using UnityEngine;

public class ScaleWithScreen : MonoBehaviour
{
    // your reference resolution (like 1920x1080)
    public Vector2 referenceResolution = new Vector2(1920, 1080);

    private Vector3 initialScale;

    void Start()
    {
        initialScale = transform.localScale;
        UpdateScale();
    }

    void Update()
    {
        // only update if you allow dynamic resizing
        UpdateScale();
    }

    void UpdateScale()
    {
        float scaleX = (float)Screen.width / referenceResolution.x;
        float scaleY = (float)Screen.height / referenceResolution.y;

        // pick one axis or average them
        float scale = Mathf.Min(scaleX, scaleY);

        transform.localScale = initialScale * scale;
    }
}
