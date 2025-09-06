using UnityEngine;
using UnityEditor;

public static class DoodadCreator
{
    [MenuItem("GameObject/Create New Empty Doodad", false, 10)]
    public static void CreateEmptyDoodad()
    {
        // Create base GameObject
        GameObject doodad = new GameObject("New Doodad");

        // Sprite Renderer
        var sr = doodad.AddComponent<SpriteRenderer>();

        // Prefab Drop Pre Organizer
        var organizer = doodad.AddComponent<PrefabDropPreOrganizer>();
        organizer.targetParentName = "Doodads";

        // Prefab Drop Snap
        var snap = doodad.AddComponent<PrefabDropSnap>();
        snap.gridSize = 1f;
        snap.offset = new Vector2(0.5f, 0.5f);

        // Y Sort
        var ysort = doodad.AddComponent<YSort>();
        ysort.sortingMultiplier = 16;
        ysort.useSpriteBottom = true;
        ysort.offset = 0f;
        ysort.offsetUnit = YSort.OffsetUnit.World;

        // Place at scene root
        doodad.transform.position = Vector3.zero;

        // Register undo
        Undo.RegisterCreatedObjectUndo(doodad, "Create New Empty Doodad");

        // Select it
        Selection.activeGameObject = doodad;
    }
}
