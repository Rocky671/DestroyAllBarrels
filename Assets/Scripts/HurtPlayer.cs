using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HurtPlayer : MonoBehaviour {
    public AudioClip hitSound;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        // when users sword collides with a barrel, the barrel is destroyed. The barrel will also play a wood breaking sound.
        if (hit.collider.CompareTag("Barrel"))
        {
            Destroy(hit.gameObject);
            GameManager.instance.barrelHit();
            AudioSource.PlayClipAtPoint(hitSound, transform.position, GameManager.instance.sfxVolume);
        }
    }
}
