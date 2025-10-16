using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "NewObjective", menuName = "Objective System/Objective")]
public class ObjectiveData : ScriptableObject
{
    [Header("Objective Info")]
    [TextArea] public string description;

    [Header("State")]
    public bool isCompleted;

    [Header("Events")]
    public UnityEvent onStart;     
    public UnityEvent onComplete;  

    public void StartObjective()
    {
        isCompleted = false;
        onStart?.Invoke();
    }

    public void CompleteObjective()
    {
        if (isCompleted) return;
        isCompleted = true;
        onComplete?.Invoke();
    }
}
