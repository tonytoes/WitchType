using UnityEngine;

public class ObjectivePickup : MonoBehaviour
{
    public ObjectiveOS objective; 

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player")) 
        {
            if (objective != null)
            {
                objective.CompleteObjective();
            }
            Destroy(gameObject);
        }
    }
}
