using UnityEngine;
using System.Collections;

public class CameraController : MonoBehaviour {
	public float sensitivity = 5F;	
    public int maxZoom = 5;
    public int minZoom = 1;
	public Transform relativeObject;
    public float speedMultiplier = 1;
	public float scrollDistance = 1;
	private Vector3 newPos = Vector3.zero;
	private float currentTime = 0.0f;
	private int currentZoom = 0;
	private float rotationY = 0F;
	private float rotationX = 0F;
	private bool isZooming = false;
     
	void Start () {
		rotationX = transform.rotation.x;
		rotationY = transform.rotation.y;	
	}
	
    void Update()
    {
		if (relativeObject == null) 
		{
			Debug.LogError("relativeObject not set");
			return;
		}
		if (minZoom >= maxZoom) 
		{
			Debug.LogError("MinZoom must be lower than MaxZoom");
			return;
		}
		if (Input.GetMouseButton(0)&&!isZooming)
		{
			rotationX = Input.GetAxis("Mouse X") * sensitivity;
			rotationY = Input.GetAxis("Mouse Y") * sensitivity;
			transform.RotateAround(relativeObject.position, transform.up, rotationX);
			transform.RotateAround(relativeObject.position, transform.right, -rotationY);
		}
		if (currentTime != 0) 
		{
			Zoom();
		}
		if (Input.GetAxis("Mouse ScrollWheel") > 0|| Input.GetAxis("Mouse ScrollWheel") < 0)
        {
			if (Input.GetAxis("Mouse ScrollWheel") > 0&&currentZoom>=maxZoom) return;
			if (Input.GetAxis("Mouse ScrollWheel") < 0&&currentZoom<=minZoom) return;
			int temp = (int)(Input.GetAxis("Mouse ScrollWheel")*10);
			currentZoom+=temp;
			if (currentZoom>maxZoom)
			{
				temp = currentZoom-maxZoom;
				currentZoom = maxZoom;
			}
			if (currentZoom<minZoom)
			{
				temp = currentZoom-minZoom;
				currentZoom = minZoom;
			}
			currentTime = 0;
			if (newPos!=Vector3.zero)
				newPos = newPos+transform.forward*scrollDistance*temp;
			else
				newPos = transform.position+transform.forward*scrollDistance*temp;
			Zoom();
        }
    }

	private void Zoom() 
	{
		isZooming = true;
		currentTime+=Time.deltaTime;
		Vector3 oldPos = transform.position;
		transform.position = Vector3.Lerp(oldPos, newPos, currentTime*speedMultiplier);
		if (currentTime * speedMultiplier >= 1) 
		{
			isZooming=false;
			currentTime=0;
			newPos = Vector3.zero;
		}
	}	
}
