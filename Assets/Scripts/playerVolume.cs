using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playerVolume : MonoBehaviour {
    private AudioSource audio;


	// Use this for initialization
	void Start () {
        // this is the player volume for background music at the start
        audio = GetComponent<AudioSource>();
        audio.volume = PlayerPrefs.GetFloat("BGMusic", 1.0F);
	    	
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
