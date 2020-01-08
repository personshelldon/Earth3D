using UnityEngine;
using System.Collections;

public class GUIMenu : MonoBehaviour
{

    private bool shining = true;
    private bool sound = true;
    private bool clouds = true;
    private bool dirtyCamera = true;
    private bool sunAmbient = true;
    private bool planetSpin = true;
    private GameObject glow;
    private GameObject earth;
    private GameObject sun;

    void OnGUI()
    {
        if (glow == null)
        {
            GameObject temp = GameObject.Find("Glowing");
            if (temp != null) glow = temp;
        }
        if (earth == null)
        {
            GameObject temp = GameObject.Find("Sphere");
            if (temp != null) earth = temp;
        }
        if (sun == null)
        {
            GameObject temp = GameObject.Find("Sun");
            if (temp != null) sun = temp;
        }        
        GUI.Box(new Rect(10, 10, 220, 170), "Настройки эффектов");
        GUI.Box(new Rect(10, 190, 220, 200), "Инструкции");
        GUI.Label(new Rect(20, 240, 200, 40), "Левая кнопка мыши - вращение планеты");
        GUI.Label(new Rect(20, 280, 200, 40), "Колесико мыши - масштаб камеры");
        GUI.Label(new Rect(20, 320, 200, 40), "ESC - выход из программы");
        bool newToggle = GUI.Toggle(new Rect(20, 40, 180, 20), sound, "Звук");
        if (newToggle != sound)
        {
            sound = newToggle;
            if (sound)
                AudioListener.pause = false;
            else
                AudioListener.pause = true;
        }
        newToggle = GUI.Toggle(new Rect(20,60,180,20),shining,"Свечение атмосферы");
        if (newToggle != shining)
        {
            shining = newToggle;
            if (shining)
            {
                glow.SetActive(true);
            }
            else
                glow.SetActive(false);
        }    
		newToggle = GUI.Toggle(new Rect(20, 80, 180, 20), clouds, "Облака");
		if (newToggle != clouds)
		{
			clouds = newToggle;
			if (clouds)
			{
				earth.renderer.materials[1].SetFloat("_Visibility",1);
			}
			else
				earth.renderer.materials[1].SetFloat("_Visibility", 0);
		}
		newToggle = GUI.Toggle(new Rect(20, 100, 180, 20), dirtyCamera, "Грязная камера");
		if (newToggle != dirtyCamera)
		{
			dirtyCamera = newToggle;
			if (dirtyCamera) {
				glareFxClassic flare = GetComponent<glareFxClassic>();
				flare.enabled = true;
			}
			else
			{
				glareFxClassic flare = GetComponent<glareFxClassic>();
				flare.enabled = false;
			}
		}
		newToggle = GUI.Toggle(new Rect(20, 120, 180, 20), sunAmbient, "Солнечные лучи");
		if (newToggle != sunAmbient)
		{
			sunAmbient = newToggle;
			if (sunAmbient)
			{
				SunShafts shafts = GetComponent<SunShafts>();
				shafts.enabled = true;
			}
			else
			{
				SunShafts shafts = GetComponent<SunShafts>();
				shafts.enabled = false;
			}
		}
		newToggle = GUI.Toggle(new Rect(20, 140, 180, 20), planetSpin, "Вращение планеты");
		if (newToggle != planetSpin)
		{
			planetSpin = newToggle;
			if (planetSpin)
			{
				TurnAround temp = sun.GetComponent<TurnAround>();
				SU_Planet temp1 = earth.GetComponent<SU_Planet>();
				temp.enabled = true;
				temp1.enabled = true;
			}
			else
			{
				TurnAround temp = sun.GetComponent<TurnAround>();
				SU_Planet temp1 = earth.GetComponent<SU_Planet>();
				temp.enabled = false;
				temp1.enabled = false;
			}
		}
	}
}