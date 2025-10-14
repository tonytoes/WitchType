using UnityEngine;

public class Projectile : MonoBehaviour
{
    public float speed = 10f;
    public float lifetime = 7f;
    public float kbForce = 5f;
    public float knockbackTime = .15f;
    public float stunTime = 1;

    public LayerMask enemyLayer;
    public int damage;

    private Rigidbody2D rb;

    private void Start()
    {

        rb = GetComponent<Rigidbody2D>();

        
        Vector3 mouseWorld = Camera.main.ScreenToWorldPoint(Input.mousePosition);
        mouseWorld.z = 0f; 

        Vector2 direction = (mouseWorld - transform.position).normalized;

        rb.linearVelocity = direction * speed; 

        
        float angle = Mathf.Atan2(direction.y, direction.x) * Mathf.Rad2Deg;
        transform.rotation = Quaternion.Euler(0f, 0f, angle);

        Destroy(gameObject, lifetime);
    }

    private void OnCollisionEnter2D(Collider2D collision)
    {
        if((enemyLayer.value & (1 << collision.gameObject.layer)) > 0)
        {
            collision.gameObject.GetComponent<EnemyHealth>().ChangeHealth(-damage);
        }
    }


}
