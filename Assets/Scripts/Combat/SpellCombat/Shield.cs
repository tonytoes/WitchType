using UnityEngine;
using System.Collections;

public class Shield : MonoBehaviour
{
    public float duration = 5f; 
    private PlayerHealth playerHealth;

    private void Start()
    {
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player != null)
        {
            playerHealth = player.GetComponent<PlayerHealth>();

            transform.SetParent(player.transform);
            transform.localPosition = Vector3.zero;
            transform.localRotation = Quaternion.identity;

            if (playerHealth != null)
                playerHealth.SetShield(true);
        }
        StartCoroutine(AutoDisable());
    }
    private IEnumerator AutoDisable()
    {
        yield return new WaitForSeconds(duration);
        DisableShield();
    }

    private void DisableShield()
    {
        if (playerHealth != null)
            playerHealth.SetShield(false);

        Destroy(gameObject);
    }
}
