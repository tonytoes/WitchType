using UnityEngine;
[CreateAssetMenu(fileName = "New Dialogue", menuName = "Dialogue/DialogueNode")]
public class DialogueSO : ScriptableObject
{
   public DialogueLine[] lines;
   public DialogueOption[] options;

    [Header("Optional (Conditional Requirements)")]
    public ActorSO[] requiredNPCS;

    public bool IsConditionMet()
    {
        if(requiredNPCS.Length > 0)
        {
            foreach (var npc in requiredNPCS)
            {
                if(!DialogueHistoryTracker.Instance.HasSpokenTo(npc))
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
}