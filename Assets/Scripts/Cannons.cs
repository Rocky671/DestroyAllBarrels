using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cannons : MonoBehaviour {
	private Transform tp;
	private Transform playerTransform;
	public GameObject barrelBullet;
	public Transform barrelSpawn;
	public float force;

	// Use this for initialization
	void Start () {
		tp = GetComponent<Transform> ();
		playerTransform = GameManager.instance.player.GetComponent<Transform> ();
	}
	
	// Update is called once per frame
	void Update () {
        // lookrotation finds the rotation the cannon needs to rotate towards the player. Slerp will rotate the cannon towards that value but smooths out the motion(interpolates the motion)
		tp.rotation = Quaternion.Slerp (tp.rotation, Quaternion.LookRotation(playerTransform.position - tp.position), 1.0F);
	}

	public void shoot()
	{
        // barrel shot is the barrel that is flying towards the player
		GameObject barrelShot = Instantiate (barrelBullet, barrelSpawn.position, barrelSpawn.rotation);
        // this adds force to the barrel so it is propelled to the player
		barrelShot.GetComponent<Rigidbody> ().AddForce(barrelShot.transform.up * force);
        // this destroys the barrel after 5 seconds to prevent multiple barrel build up. 
		Destroy (barrelShot, 5.0f);
	}

}


