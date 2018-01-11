using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class swingSword : MonoBehaviour {

	private Animator animator;
    public AudioClip swing;

	// Use this for initialization
	void Start () {
        // getting the animator component
		animator = GetComponent<Animator> ();
	}
	
	// Update is called once per frame
	void Update () {
        // Once the user clicks the left mouse button, the sword will swing and play a swing noise at his position
		if (Input.GetKeyDown (KeyCode.Mouse0)) {
			animator.SetTrigger ("Swing");
            AudioSource.PlayClipAtPoint(swing, transform.position, GameManager.instance.sfxVolume);
		}
	}
}
