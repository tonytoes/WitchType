using UnityEngine;

public class ObjectiveCounter : MonoBehaviour
{
    public ObjectiveData objectiveToComplete;
    public int targetCount = 3;
    private int current = 0;

    public void RegisterKill()
    {
        current++;
        if (current >= targetCount)
            objectiveToComplete?.CompleteObjective();
    }
}
