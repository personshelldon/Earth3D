using UnityEngine;
using System.Collections;

public class TurnAround : MonoBehaviour {

    public int rotationSpeed = 20;
	public Transform item;

    void Start()
    {
    }

    void Update()
    {
		if (item != null) 
		{
			transform.RotateAround (item.position, Vector3.up, rotationSpeed * Time.deltaTime);
		}
    }
}
