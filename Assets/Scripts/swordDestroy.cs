using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class swordDestroy : MonoBehaviour {
    public AudioClip woodBreak;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider collision)
    {
        if(collision.CompareTag("Barrel"))
        {
            // when the object colliding has the "Barrel" tag and it collides with the sword, destroy the object.
            Destroy(collision.gameObject);
            // and add one to player score. 
            GameManager.instance.scoreHit();
            // when sword collides with barrel, play wood break sound.
            AudioSource.PlayClipAtPoint(woodBreak, transform.position, GameManager.instance.sfxVolume);
        }
    }
}
