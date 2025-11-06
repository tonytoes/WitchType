using UnityEngine;

public class DialogueTrigger: MonoBehaviour
{
    [SerializeField] private string playerTag = "Player";
    [SerializeField] private DialogueSO dialogueSO;
    [SerializeField] private bool triggerOnce = true;

    private bool hasTriggered = false;

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (!other.CompareTag(playerTag))
            return;

        if (hasTriggered && triggerOnce)
            return;

        if (dialogueSO == null)
        {
            return;
        }

        if (GameManager.Instance != null && GameManager.Instance.DialogueManager != null)
        {
            var dialogueManager = GameManager.Instance.DialogueManager;

            if (!dialogueManager.isDialogueActive && dialogueManager.CanStartDialogue())
            {
                dialogueManager.StartDialogue(dialogueSO);
                hasTriggered = true;
            }
        }
    }
}
