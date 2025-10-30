using UnityEngine;

public class HealthUpgrade : MonoBehaviour
{
    public int healthIncrease = 20; // amount to increase max health
    public AudioClip pickupSound;

    private void OnTriggerEnter2D(Collider2D other)
    {
        Debug.Log("Health Upgrade picked up!"); // debug test

        PlayerHealth player = other.GetComponent<PlayerHealth>();
        if (player != null)
        {
            player.IncreaseMaxHealth(healthIncrease);

            if (pickupSound)
                AudioSource.PlayClipAtPoint(pickupSound, transform.position);

            Destroy(gameObject); // remove the collectible
        }
    }
}
