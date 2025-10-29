using UnityEngine;
using System.Collections;

public class Shield : MonoBehaviour
{
    public float duration = 5f;
    private PlayerHealth playerHealth;
    
    [Header("SFX")]
    private AudioManager audioManager;
    public string sfx;


    private void Start()
    {
        audioManager = FindFirstObjectByType<AudioManager>();
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player != null)
        {
            playerHealth = player.GetComponent<PlayerHealth>();

            transform.SetParent(player.transform);
            transform.localPosition = Vector3.zero;
            transform.localRotation = Quaternion.identity;

            if (playerHealth != null)
                playerHealth.SetShield(true);
                audioManager?.PlaySFX(sfx);
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
            audioManager?.PlaySFX(sfx);

        Destroy(gameObject);
    }
}
