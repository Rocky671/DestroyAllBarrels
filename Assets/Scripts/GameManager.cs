using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {

    public static GameManager instance;
    public GameObject player;
    public Text screenHealth;
    public Text screenScore;
    public Text warning;
    public GameObject[] cannons;

    public float sfxVolume;

    private int playerHealth;
    private int score;

    private int numberOfCannonsShooting;

    // Use this for initialization
    void Start() {
        // singleton
        if (instance == null) {
            instance = this;
        }
        else {
            Destroy(gameObject);
        }

        // amount of health player starts with
        playerHealth = 10;
        // score player starts with
        score = 0;
        // number of cannons shooting at start
        numberOfCannonsShooting = 2;

        // if user changes nothing in options for volume, it starts at 1.0
        sfxVolume = PlayerPrefs.GetFloat("SFX", 1.0F);

        // the cannons will shoot repeatedly. They start shooting at 1 second, and repeat shooting every 5 seconds after
        InvokeRepeating("shootCannons", 1.0F, 5.0F);
    }

    // Update is called once per frame
    void Update() {
        // when user press esc, it loads the main menu
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            SceneManager.LoadScene("Main Menu");
        }
    }

    public void barrelHit()
    {
        // when player gets hit by a barrel, health is reduced by 1
        updateHealth(-1);

        // when players health hits 0, lose scene loads 
        if(playerHealth == 0)
        {
            SceneManager.LoadScene("Lose Scene");
        }
    }

    public void scoreHit()
    {
        // whenever player hits a barrel, his score goes up by one. the on screen text score also updates
        score = score + 1;
        screenScore.text = "Score: " + score;

        // when the players score reaches 5 and not 5.x, the number of cannons shooting will increase by one. 
        if(score % 5 == 0 && numberOfCannonsShooting < cannons.Length)
        {
            numberOfCannonsShooting = numberOfCannonsShooting + 1;
            // players health will also add 1 and play the warning screen to notify player that a cannon has been added and health increased.
            updateHealth(1);
            // the warning screen is set to false until the game recognizes the 5 points. It will go away after 5 seconds.
            warning.gameObject.SetActive(true);
            Invoke("hideWarning", 5.0F);
        }

        // Win condition
       /* if (score == 100)
        {
            // show win screen
            SceneManager.LoadScene("Win");
        }*/
    }

    // cannons shooting function
    void shootCannons()
    {
        // this is an integer list of the cannons that will be chosen at random
        List<int> chosenCannons = new List<int>();
        while(chosenCannons.Count < numberOfCannonsShooting)
        {
            // a new cannon is chosen from the amount of cannons available, at random.
            int newCannon = Random.Range(0, cannons.Length);
            // if the chosen cannons already contains that cannon 
            if(chosenCannons.Contains(newCannon))
            {
                // then repeat the process and find a different cannon
                continue;
            }
            chosenCannons.Add(newCannon);
        }
        
        // take the chosen cannons and have them shoot at the player.
        for(int i = 0; i < chosenCannons.Count; i++)
        {
            cannons[chosenCannons.ElementAt(i)].GetComponent<Cannons>().shoot();
        }
    }

    void hideWarning()
    {
        // this hides the warning text 
        warning.gameObject.SetActive(false);
    }

    void updateHealth(int health)
    {
        // player health will increase by the health chosen
        playerHealth = playerHealth + health;
        // screen health will update player health
        screenHealth.text = "Health: " + playerHealth;
    }
}
