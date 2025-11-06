using UnityEngine;

public static class SimulatedInput
{
    private static bool ePressed;

    // Called by UI Button
    public static void PressE()
    {
        ePressed = true;
        Debug.Log("[SimulatedInput] E pressed");
    }

    // Called by world objects
    public static bool GetEPressed()
    {
        if (ePressed)
        {
            ePressed = false; // consume once
            return true;
        }
        return false;
    }
}
