using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class optionsMenu : MonoBehaviour {
    public Slider SFXSlider;
    public Slider BGMSlider;

    // Use this for initialization
    void Start () {
        // SFX and BGM sliders start at this value.
        SFXSlider.value = PlayerPrefs.GetFloat("SFX", 1.0F);
        BGMSlider.value = PlayerPrefs.GetFloat("BGMusic", 1.0F);
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void mainMenu()
    {
        // loads the main menu screen
        SceneManager.LoadScene("Main Menu");
    }

    public void SFX(float newVol)
    {
        // sets the player preference from the options menu
        PlayerPrefs.SetFloat("SFX", newVol);
    }

    public void backGround(float newVol)
    {
        // sets the player preference from the option menu
        PlayerPrefs.SetFloat("BGMusic", newVol);
    }
}
