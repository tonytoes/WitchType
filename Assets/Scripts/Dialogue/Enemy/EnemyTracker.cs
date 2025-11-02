using UnityEngine;
using System.Collections.Generic;

public class EnemyTracker : MonoBehaviour
{
    private Dictionary<EnemySO, int> enemyKills = new();

    public void RegisterDefeat(EnemySO enemySO)
    {
        if (!enemyKills.ContainsKey(enemySO)) enemyKills[enemySO] = 0;
        enemyKills[enemySO]++;
    }

    public int GetDefeatCount(EnemySO enemySO)
    {
        return enemyKills.ContainsKey(enemySO) ? enemyKills[enemySO] : 0;
    }
}
