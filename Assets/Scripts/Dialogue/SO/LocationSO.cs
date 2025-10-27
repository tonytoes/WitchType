using UnityEngine;

[CreateAssetMenu(menuName = "LocationSO")]
public class LocationSO : ScriptableObject
{
    public string locationID; // this is ideally mutable
    public string displayName;

}
