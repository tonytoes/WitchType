using UnityEngine;
using Unity.Cinemachine;

public class CinemachineShake : MonoBehaviour
{
    public static CinemachineShake Instance;
    private CinemachineImpulseSource _impulseSource;

    private void Awake()
    {
        Instance = this;
        _impulseSource = GetComponent<CinemachineImpulseSource>();
    }

    public void Shake(float intensity = 0.5f)
    {
        _impulseSource.GenerateImpulse(intensity);
    }

}
