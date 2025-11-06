using TMPro;
using UnityEngine;

public class ActiveQuest : MonoBehaviour
{
    [SerializeField] private TMP_Text activeQuestText;
    [SerializeField] private string defaultText = "";

    private void Start()
    {
        activeQuestText.text = defaultText;
    }

    private void OnEnable()
    {
        QuestEvents.OnQuestAccepted += UpdateQuestText;
        QuestEvents.OnQuestTurnInRequested += ClearQuestText;
    }

    private void OnDisable()
    {
        QuestEvents.OnQuestAccepted -= UpdateQuestText;
        QuestEvents.OnQuestTurnInRequested -= ClearQuestText;
    }

    private void UpdateQuestText(QuestSO questSO)
    {
        if (questSO != null)
            activeQuestText.text = $"Active Quest: {questSO.questName}";
        else
            activeQuestText.text = defaultText;
    }

    private void ClearQuestText(QuestSO questSO)
    {
        activeQuestText.text = defaultText;
    }
}
