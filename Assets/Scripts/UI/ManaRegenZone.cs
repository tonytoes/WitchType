using UnityEngine;

public class ManaRegenZone : MonoBehaviour
{
    [Header("Mana Regen Modifier Settings")]
    [Tooltip("How much to change the player's mana regen rate (can be positive or negative).")]
    public float regenModifier = 2f;

    [Tooltip("Should the regen change stay permanent or revert after leaving the zone?")]
    public bool permanentChange = false;

    private bool hasModified = false;
    private float originalRegenRate;

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player") && !hasModified)
        {
            PlayerMana playerMana = collision.GetComponent<PlayerMana>();
            if (playerMana != null)
            {
                originalRegenRate = playerMana.mana_regen;
                playerMana.mana_regen = regenModifier;
                hasModified = true;

                // optional: you can add a log for debugging
                Debug.Log($"Player entered mana zone. Regen set to {regenModifier}");
            }
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.CompareTag("Player") && hasModified && !permanentChange)
        {
            PlayerMana playerMana = collision.GetComponent<PlayerMana>();
            if (playerMana != null)
            {
                playerMana.mana_regen = originalRegenRate;
                hasModified = false;

                Debug.Log("Player left mana zone. Regen reverted to original.");
            }
        }
    }
}
