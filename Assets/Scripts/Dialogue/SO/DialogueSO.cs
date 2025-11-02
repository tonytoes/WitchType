using UnityEngine;
using System.Collections.Generic;

[CreateAssetMenu(fileName = "New Dialogue", menuName = "Dialogue/DialogueNode")]
public class DialogueSO : ScriptableObject
{
    public DialogueLine[] lines;
    public DialogueOption[] options;

    [Header("Quest Offer (optional)")]
    public QuestSO offerQuestOnEnd;

    [Header("Complete Quest Requirements")]
    public QuestSO[] requiredCompletedQuests;

    [Header("Quest Turn-in")]
    public QuestSO turnInQuestsOnEnd;

    [Header("Optional (Conditional Requirements)")]
    public ActorSO[] requiredNPCS;
    public LocationSO[] requiredLocations;

    [Header("Control Flags")]
    public bool removeAfterPlay;
    public List<DialogueSO> removeTheseOnPlay;

    public bool IsConditionMet()
    {
        if(requiredNPCS.Length > 0)
        {
            foreach (var npc in requiredNPCS)
            {
                if(!GameManager.Instance.DialogueHistoryTracker.HasSpokenWith(npc))
                    {
                       return false;
                    }
            }
        }

        if(requiredLocations.Length > 0)
        {
            foreach (var location in requiredLocations)
            {
                if(!GameManager.Instance.LocationHistoryTracker.HasVisited(location))
                {
                    return false;
                }
            }
        }

        if(requiredCompletedQuests != null && requiredCompletedQuests.Length > 0)
        {
            foreach (var quest in requiredCompletedQuests)
            {
                if(!GameManager.Instance.QuestManager.IsQuestComplete(quest))
                {
                    return false;
                }
            }
        }

        return true;
    }

}

[System.Serializable]
public class DialogueLine
{ 
    public ActorSO speaker;
    [TextArea(3, 5)] public string text;

}


[System.Serializable]
public class DialogueOption
{
    public string optionText;
    public DialogueSO nextDialogue;
    public QuestSO offerQuest;
}