using UnityEngine;

[CreateAssetMenu(fileName = "EnemySO", menuName = "EnemySO")]
public class EnemySO : ScriptableObject
{
    public string enemyName;
    public GameObject enemyPrefab;
}
