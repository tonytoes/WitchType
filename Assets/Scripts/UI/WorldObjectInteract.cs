using UnityEngine;

public class WorldObjectInteract : MonoBehaviour
{
    [Header("Dialogue")]
    [Tooltip("ScriptableObject dialogue asset. Will be cloned at runtime so each object is independent.")]
    [SerializeField] private DialogueSO dialogueAsset;

    [Header("Settings")]
    [SerializeField] private string playerTag = "Player";
    [SerializeField] private Animator interactAnim; // optional: open/close hint anim

    private bool playerInRange = false;

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!other.CompareTag(playerTag)) return;
        playerInRange = true;
        if (interactAnim != null) interactAnim.Play("Open");
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (!other.CompareTag(playerTag)) return;
        playerInRange = false;
        if (interactAnim != null) interactAnim.Play("Close");
    }

    private void Update()
    {
        if (!playerInRange) return;

        if (Input.GetButtonDown("Interact"))
        {
            var dm = GameManager.Instance?.DialogueManager;
            if (dm == null) return;

            // If a dialogue is already active, just advance it
            if (dm.isDialogueActive)
            {
                dm.AdvanceDialogue();
                return;
            }

            // CanStartDialogue check (optional safety)
            if (!dm.CanStartDialogue()) return;

            if (dialogueAsset == null) return;

            // IMPORTANT: Instantiate the ScriptableObject so runtime state is unique per object
            DialogueSO runtimeDialogue = Instantiate(dialogueAsset);
            dm.StartDialogue(runtimeDialogue);
        }
    }
}
