using UnityEngine;
using System.Collections.Generic;

public class QuestManager : MonoBehaviour
{
    private Dictionary<QuestSO, Dictionary<QuestObjective, int>> questProgress = new();

    /*public void UpdateObjectiveProgress(QuestSO, questSO, QuestObjective objective)//
    public string GetProgressText(QuestSO questSO)
    {
        int currentAmount = 0;

       if (currentAmount >= objective.requireedAmount)
       {
            return "Complete";
        }
        else if (objective.targetItem != null)
        {
            return $"{currentAmount}/{objective.requriedAmount}";
        }

        else
            return "In Progress" 

    } */

}
