using UnityEngine;
using System.Collections;

public class DamageFlashPlayer : MonoBehaviour
{
    [ColorUsage(true, true)]
    [SerializeField] private Color _flashColor = Color.red;
    [SerializeField] private float _flashTime = 0.25f;
    [SerializeField] private AnimationCurve _flashSpeedCurve;

    [Header("UI Panel Settings")]
    [SerializeField] private GameObject _damagePanel; 
    [SerializeField] private float _panelDuration = 0.25f; 

    private SpriteRenderer[] _spriteRenderers;
    private Material[] _materials;

    private Coroutine _damageFlashCoroutine;

    private void Awake()
    {
        _spriteRenderers = GetComponentsInChildren<SpriteRenderer>();
        Init();
    }

    private void Init()
    {
        _materials = new Material[_spriteRenderers.Length];

        for (int i = 0; i < _spriteRenderers.Length; i++)
        {
            _materials[i] = _spriteRenderers[i].material;
        }
    }

    public void CallDamageFlash()
    {
        CinemachineShake.Instance.ShakeOnce(1f);
        _damageFlashCoroutine = StartCoroutine(DamageFlasher());
        if (_damagePanel != null)
            StartCoroutine(ShowPanel());
    }

    private IEnumerator DamageFlasher()
    {
        SetFlashColor();

        float currentFlashAmount = 0f;
        float elapsedTime = 0f;
        while (elapsedTime < _flashTime)
        {
            elapsedTime += Time.deltaTime;
            currentFlashAmount = Mathf.Lerp(1f, _flashSpeedCurve.Evaluate(elapsedTime), elapsedTime / _flashTime);
            SetFlashAmount(currentFlashAmount);

            yield return null;
        }
    }

    private IEnumerator ShowPanel()
    {
        _damagePanel.SetActive(true);
        yield return new WaitForSeconds(_panelDuration);
        _damagePanel.SetActive(false);
    }

    private void SetFlashColor()
    {
        for (int i = 0; i < _materials.Length; i++)
        {
            _materials[i].SetColor("_FlashColor", _flashColor);
        }
    }

    private void SetFlashAmount(float amount)
    {
        for (int i = 0; i < _materials.Length; i++)
        {
            _materials[i].SetFloat("_FlashAmount", amount);
        }
    }
}
