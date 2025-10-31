using UnityEngine;

[ExecuteAlways]
public class WorldCanvasScaler : MonoBehaviour
{
    public Camera targetCamera;
    public float referenceHeight = 1080f; // pick a base reference
    public float referenceWidth = 1920f;  // optional if you want width-based scaling

    private Vector3 initialScale;

    void Awake()
    {
        if (targetCamera == null) targetCamera = Camera.main;
        initialScale = transform.localScale;
    }

    void Update()
    {
        if (targetCamera == null) return;

        // Calculate scale factor based on camera size or viewport
        float heightFactor = targetCamera.orthographic ? 
            targetCamera.orthographicSize * 2f / referenceHeight :
            1f; // you can tweak for perspective

        float widthFactor = targetCamera.pixelWidth / referenceWidth;

        // Apply the smaller factor to keep aspect ratio consistent
        float scaleFactor = Mathf.Min(heightFactor, widthFactor);

        transform.localScale = initialScale * scaleFactor;
    }
}
