using UnityEngine;

public class DestroyOnCollide : MonoBehaviour
{
    [Header("Objects to Destroy on Collision")]
    [SerializeField] private GameObject[] targets;

    [Header("Collision Settings")]
    [SerializeField] private string triggerTag = "Player"; 

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (!collision.CompareTag(triggerTag)) return;

        foreach (GameObject target in targets)
        {
            if (target != null)
                Destroy(target);
        }
    }
}
