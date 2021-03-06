﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class LoginScript : MonoBehaviour
{
    [SerializeField]
    InputField usernameInput;
    [SerializeField]
    InputField passwordInput;
    [SerializeField]
    Canvas registerCanvas;
    [SerializeField]
    Canvas principalCanvas;
    void Awake()
    {
        registerCanvas.enabled = false;
    }    
    public void OnEntrar()
    {
        StartCoroutine(GetPlayerPassword());
    }
    public void OnAindaNaoRegistrado()
    {
        this.GetComponent<Canvas>().enabled = false;
        registerCanvas.enabled = true;
    }
    public void OnVoltarAoMenu()
    {
        this.GetComponent<Canvas>().enabled = false;
        principalCanvas.enabled = true;
    }
    public IEnumerator GetPlayerPassword()
    {
        WWWForm form = new WWWForm();
		form.AddField("nicknameip", usernameInput.text);
		form.AddField("senha", passwordInput.text);

		WWW www = new WWW("http://ben10go.96.lt/Login.php", form);
        yield return www;
        string status = www.text;
       if( status =="Sucesso")
        {
            PlayerPrefs.SetString("Username", usernameInput.text);
            SceneManager.LoadScene("Game");
        }

    }
}
