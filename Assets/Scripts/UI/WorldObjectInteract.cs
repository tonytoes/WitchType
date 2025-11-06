using UnityEngine;

public class WorldObjectInteract : MonoBehaviour
{
    [SerializeField] private DialogueSO dialogueAsset;
    [SerializeField] private string playerTag = "Player";

    private bool playerInRange;

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            playerInRange = true;
            Debug.Log("[WorldObjectInteract] Player entered range");
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag(playerTag))
        {
            playerInRange = false;
            Debug.Log("[WorldObjectInteract] Player left range");
        }
    }

    private void Update()
    {
        if (!playerInRange) return;

        // Either E key or button press
        if (Input.GetKeyDown(KeyCode.E) || SimulatedInput.GetEPressed())
        {
            Debug.Log("[WorldObjectInteract] Interaction triggered");

            var dm = GameManager.Instance?.DialogueManager;
            if (dm == null)
            {
                Debug.LogWarning("[WorldObjectInteract] No DialogueManager found");
                return;
            }

            if (dm.isDialogueActive)
            {
                dm.AdvanceDialogue();
                return;
            }

            if (!dm.CanStartDialogue() || dialogueAsset == null)
            {
                Debug.LogWarning("[WorldObjectInteract] Can't start dialogue");
                return;
            }

            DialogueSO runtimeDialogue = Instantiate(dialogueAsset);
            dm.StartDialogue(runtimeDialogue);
        }
    }
}
