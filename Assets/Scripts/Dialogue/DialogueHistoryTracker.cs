using UnityEngine;
using System.Collections.Generic;

public class DialogueHistoryTracker : MonoBehaviour
{
    public static DialogueHistoryTracker Instance;
    private HashSet<ActorSO> spokenNPCS = new HashSet<ActorSO>();

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
