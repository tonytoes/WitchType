using UnityEngine;
using TMPro;

public class ObjectiveManager : MonoBehaviour
{
    public ObjectiveList currentObjectiveList;
    public TMP_Text objectiveText;
    public Canvas objectivePanel;
    private int currentIndex = 0;

    private void Start()
    {
        if (currentObjectiveList == null)
        {
            objectiveText.text = "";
            Debug.LogWarning("ObjectiveManager: No ObjectiveList assigned.");
            return;
        }
        StartObjective(currentIndex);
    }

    private void StartObjective(int index)
    {
        if (index >= currentObjectiveList.objectives.Length)
        {
            objectiveText.text = "All objectives completed!";
            ShowObjective();
            return;
        }

        var obj = currentObjectiveList.objectives[index];
        obj.StartObjective();
        objectiveText.text = obj.description;
        ShowObjective();

        obj.onComplete.AddListener(HandleObjectiveCompleted);
    }

    private void HandleObjectiveCompleted()
    {
        var current = currentObjectiveList.objectives[currentIndex];
        current.onComplete.RemoveListener(HandleObjectiveCompleted);

        currentIndex++;
        StartObjective(currentIndex);
    }

    public void CompleteCurrentObjective()
    {
        if (currentIndex < currentObjectiveList.objectives.Length)
            currentObjectiveList.objectives[currentIndex].CompleteObjective();
    }

    private void ShowObjective()
    {
        objectivePanel.gameObject.SetActive(true);  
    }
}
