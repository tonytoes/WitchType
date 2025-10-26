using UnityEngine;
using Unity.Cinemachine;

public class CinemachineShake : MonoBehaviour
{
    public static CinemachineShake Instance;
    private CinemachineImpulseSource _impulseSource;
    [SerializeField] private float shakeCooldown = 0.3f;
    private float lastShakeTime;

    private void Awake()
    {
        Instance = this;
        _impulseSource = GetComponent<CinemachineImpulseSource>();
    }
    public void Shake(float intensity = 0.5f)
    {
        if (Time.time - lastShakeTime < shakeCooldown)
            return;
        _impulseSource.GenerateImpulse(intensity);
        lastShakeTime = Time.time;

    }

}
