using UnityEngine;
using System.Collections;

public class SU_Planet : MonoBehaviour {
	public Vector3 planetRotation;
	
	void Start () {
	}
	
	void Update () {	
		transform.Rotate(planetRotation * Time.deltaTime);
	}

}
