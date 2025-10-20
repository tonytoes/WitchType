using UnityEngine;
using System.Collections.Generic;

public class DialogueHistoryTracker : MonoBehaviour
{
    public static DialogueHistoryTracker Instance;
    private List<ActorSO> spokenNPCS = new List<ActorSO>();

    public void Awake()
    {
        if(Instance != null)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }

    public void RecordNPC(ActorSO actorSO)
    {
        spokenNPCS.Add(actorSO);
        Debug.Log("Recorded NPC: " + actorSO.actorName);
    }

    public bool HasSpokenTo(ActorSO actorSO)
    {
        return spokenNPCS.Contains(actorSO);
    }
}
