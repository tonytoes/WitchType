using UnityEngine;

[CreateAssetMenu(fileName = "NewObjectiveList", menuName = "Objective System/Objective List")]
public class ObjectiveList : ScriptableObject
{
    public ObjectiveData[] objectives;
}
