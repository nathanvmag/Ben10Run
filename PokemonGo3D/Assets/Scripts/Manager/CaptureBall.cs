﻿using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class CaptureBall : MonoBehaviour
{
    Rigidbody rb;
    bool follow;
    public GameObject player;

	void Start ()
	{
        player = GameObject.Find("Player");
        follow = false;
        rb = GetComponent<Rigidbody>();
        rb.AddForce(Vector3.up * 10);
        StartCoroutine(wait());
	}

	void Update ()
	{
        if (follow)
        {
            transform.position = Vector3.MoveTowards(transform.position, player.transform.position, Time.deltaTime);
        }
	}

    IEnumerator wait()
    {
        yield return new WaitForSeconds(1f);

        rb.velocity = Vector3.zero;
        follow = true;
    }

    void OnCollisionEnter(Collision coll)
    {
        if (coll.gameObject.tag == "Player")
        {
            player.GetComponent<PlayerScript>().captureCount++;
            GameObject.Find("Score").GetComponent<Text>().text = player.GetComponent<PlayerScript>().captureCount.ToString();
            Destroy(gameObject);
        }
    }
}
