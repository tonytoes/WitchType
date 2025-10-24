using UnityEngine;
using UnityEngine.UI;

public class FloatingHealthBar : MonoBehaviour
{
    [SerializeField] private Slider slider;
    [SerializeField] private Vector3 offset;
    private Transform target;

    private bool isDead = false;

    public void Initialize(Transform targetToFollow)
    {
        target = targetToFollow;
    }

    public void UpdateHealth(float current, float max)
    {
        // Update the slider value
        slider.value = current / max;

        // If health is zero, disable the health bar
        if (current <= 0 && !isDead)
        {
            isDead = true;
            gameObject.SetActive(false); // or Destroy(gameObject);
        }
    }

    void LateUpdate()
    {
        if (target != null && !isDead)
        {
            transform.position = Camera.main.WorldToScreenPoint(target.position + offset);
        }
    }
}
