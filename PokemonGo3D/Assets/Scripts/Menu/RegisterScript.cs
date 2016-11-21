using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class RegisterScript : MonoBehaviour
{
    [SerializeField]
    InputField usernameInput;
    [SerializeField]
    InputField passwordInput;
    [SerializeField]
    InputField emailInput;
    [SerializeField]
    Canvas principalCanvas;

	public void OnRegistrar()
    { 
        WWWForm form = new WWWForm();
        form.AddField("nickname", usernameInput.text);
        form.AddField("senha", passwordInput.text);
        form.AddField("email", emailInput.text);

		WWW www = new WWW("http://ben10go.96.lt/Register.php", form);
		Debug.Log (www.text);
    }
    public void OnVoltarAoMenu()
    {
        this.GetComponent<Canvas>().enabled = false;
        principalCanvas.enabled = true;
    }

}
