using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class menuButtons : MonoBehaviour {
    

	// Use this for initialization
	void Start () {
        // when the user returns to main menu, the cursor won't be screenlocked to the center
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void startGame()
    {
        // loads game scene
        SceneManager.LoadScene("Game");
    }

    public void options()
    {
        // loads option menu scene
        SceneManager.LoadScene("Options");    
    }

    public void quit()
    {
        // quits game.
        Application.Quit();
    }
}
