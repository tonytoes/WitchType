using UnityEngine;

public class InteractMobile : MonoBehaviour
{
    public bool isMobileEPressed = false;

    void Update()
    {
        // Check for E key on keyboard or mobile button press
        if (Input.GetKeyDown(KeyCode.E) || isMobileEPressed)
        {
            Interact();
            isMobileEPressed = false; // reset after triggering
        }
    }

    // Called when player interacts
    private void Interact()
    {
        Debug.Log("Interacted!");
        // Add your interaction logic here (open door, talk, etc.)
    }

    // This function will be called by your mobile UI Button
    public void OnMobileEPressed()
    {
        isMobileEPressed = true;
    }
}
