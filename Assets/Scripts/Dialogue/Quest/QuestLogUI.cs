using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class QuestLogUI : MonoBehaviour
{
    [SerializeField] private QuestManager questManager;
    [SerializeField] private TMP_Text questNameText;
    [SerializeField] private TMP_Text questDescriptionText;
    [SerializeField] private QuestObjectiveSlot[] objectiveSlots;

    private QuestSO questSO;

    [SerializeField] private QuestSO noAvailableQuestSO;
    [SerializeField] private QuestLogSlot[] questSlots;

    [SerializeField] private CanvasGroup questCanvas;
    [SerializeField] private CanvasGroup acceptCanvas;
    [SerializeField] private CanvasGroup declineCanvas;
    [SerializeField] private CanvasGroup completeCanvas;

    private void Awake()
    {
        SetCanvasState(acceptCanvas, false);
        SetCanvasState(declineCanvas, false);
        SetCanvasState(completeCanvas, false);

    }

    // Same Method as on enable and on disable lol
    public void Initialize()
    {

        QuestEvents.OnQuestOfferRequested -= ShowQuestOffer;
        QuestEvents.OnQuestTurnInRequested -= ShowQuestTurnIn;

        QuestEvents.OnQuestOfferRequested += ShowQuestOffer;
        QuestEvents.OnQuestTurnInRequested += ShowQuestTurnIn;

        SetCanvasState(acceptCanvas, false);
        SetCanvasState(declineCanvas, false);
        SetCanvasState(completeCanvas, false);
    }

    private void OnEnable()
    {
        QuestEvents.OnQuestOfferRequested += ShowQuestOffer;
        QuestEvents.OnQuestTurnInRequested += ShowQuestTurnIn;
    }

    private void OnDisable()
    {
        QuestEvents.OnQuestOfferRequested -= ShowQuestOffer;
        QuestEvents.OnQuestTurnInRequested -= ShowQuestTurnIn;
    }

    #region Show Quest Methods
    public void ShowQuestOffer(QuestSO incomingQuestSO)
    {
        questCanvas.gameObject.SetActive(true);
        if (questManager.IsQuestAccepted(incomingQuestSO) || questManager.GetCompleteQuest(incomingQuestSO))
        {
            questSO = noAvailableQuestSO;
            SetCanvasState(acceptCanvas, false);
            SetCanvasState(declineCanvas, true);
            SetCanvasState(completeCanvas, false);
        }
        else
        {
            questSO = incomingQuestSO;
            SetCanvasState(acceptCanvas, true);
            SetCanvasState(declineCanvas, true);
            SetCanvasState(completeCanvas, false);
        }
            HandleQuestClicked(questSO);
            SetCanvasState(questCanvas, true);
    }

    public void ShowQuestTurnIn(QuestSO incomingQuestSO)
    {
        questSO = incomingQuestSO;

        HandleQuestClicked(questSO);

        SetCanvasState(completeCanvas, true);
        SetCanvasState(acceptCanvas, false);
        SetCanvasState(declineCanvas, false);
        SetCanvasState(questCanvas, true);
    }
    #endregion

    #region On Button Clicked Method
    public void OnAcceptQuestClicked()
    {
        QuestEvents.OnQuestAccepted?.Invoke(questSO);


        questManager.AcceptQuest(questSO);
        SetCanvasState(completeCanvas, false);
        SetCanvasState(acceptCanvas, false);
        SetCanvasState(declineCanvas, false);
        RefreshQuestList();
        HandleQuestClicked(noAvailableQuestSO);
    }

    public void OnDeclineQuestClicked()
    {
        SetCanvasState(questCanvas, false);
    }

    public void OnCompleteQuestClicked()
    {
        questManager.CompleteQuest(questSO);
        RefreshQuestList();
        HandleQuestClicked(noAvailableQuestSO);
        SetCanvasState(completeCanvas, false);
    }
    #endregion

    public void RefreshQuestList()
    {
        List<QuestSO> activeQuests = questManager.GetActiveQuests();

        for (int i = 0; i < questSlots.Length; i++)
        {
            if (i < activeQuests.Count)
            {
                questSlots[i].SetQuest(activeQuests[i]);
            }
            else
            {
                questSlots[i].ClearSlot();
            }
        }
    }


    private void SetCanvasState(CanvasGroup group, bool activate)
    {
        group.alpha = activate ? 1 : 0;
        group.blocksRaycasts = activate;
        group.interactable = activate;
    }

    public void HandleQuestClicked(QuestSO questSO)
    {
        this.questSO = questSO;

        questNameText.text = questSO.questName;
        questDescriptionText.text = questSO.questDescription;

        DisplayObjective();
        foreach (var objective in questSO.objectives)
        {
            questManager.UpdateObjectiveProgress(questSO, objective);
            Debug.Log($"Objective: {objective.description} => {questManager.GetProgressText(questSO, objective)}");
        }
    }


    private void DisplayObjective()
    {
        for (int i = 0; i < objectiveSlots.Length; i++)
        {
            if(i < questSO.objectives.Count)
            {
              var objective = questSO.objectives[i];
               questManager.UpdateObjectiveProgress(questSO, objective);

                int currentAmount = questManager.GetCurrentAmount(questSO, objective);
                string progress = questManager.GetProgressText(questSO, objective);
                bool isComplete = currentAmount >= objective.requiredAmount;

                objectiveSlots[i].gameObject.SetActive(true);
                objectiveSlots[i].RefreshObjective(objective.description, progress, isComplete);
            }
            else
            {
                objectiveSlots[i].gameObject.SetActive(false);
            }
        }
    }

}
