using UnityEngine;

public class ObjectiveEnemyTrigger : MonoBehaviour
{
    public ObjectiveData objectiveToComplete;

    private void OnDestroy()
    {
        objectiveToComplete.CompleteObjective();
    }
}
