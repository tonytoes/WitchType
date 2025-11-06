using UnityEngine;

public class InteractMobile : MonoBehaviour
{
    public void OnEButtonPressed()
    {
        Debug.Log("[InteractMobile] Button pressed → SimulatedInput.PressE()");
        SimulatedInput.PressE();
    }
}
