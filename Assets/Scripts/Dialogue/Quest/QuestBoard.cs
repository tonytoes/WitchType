using UnityEngine;

public class QuestBoard : MonoBehaviour
{
    [SerializeField] private QuestSO questToOffer;
    [SerializeField] private QuestSO questToTurnIn;
    private bool playerInRange;

    private void Update()
    {
        if(playerInRange && Input.GetButtonDown("Interact"))
        {
            bool canTurnIn = questToTurnIn != null && QuestEvents.IsQuestComplete?.Invoke(questToTurnIn) == true;
            if(canTurnIn)
            {
                QuestEvents.OnQuestTurnInRequested?.Invoke(questToTurnIn);
            }
            else
            {
                QuestEvents.OnQuestOfferRequested?.Invoke(questToOffer);
            }
                Debug.Log("✅ Player interacted with QuestBoard");
            if (GameManager.Instance?.spellBookUI != null)
            {
                GameManager.Instance.spellBookUI.OpenSpellBook(GameManager.Instance.spellBookUI.questPageIndex);
            }
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.CompareTag("Player"))
        {
            playerInRange = true;
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if(collision.gameObject.CompareTag("Player"))
        {
            playerInRange = false;
        }
    }

}
