//!DHARIA
//SpartanCollection.postman_collection.json

{
	"info": {
		"_postman_id": "35b8b3e5-47d9-4f7b-b888-24a79aad4960",
		"name": "SpartanCollection",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
	},
	"item": [
		{
			"name": "Get All Spartans",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans",
					"protocol": "https",
					"host": [
						"pi2hscwpkz",
						"us-east-1",
						"awsapprunner",
						"com"
					],
					"path": [
						"api",
						"spartans"
					]
				}
			},
			"response": []
		},
		{
			"name": "Get One Spartan",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/2",
					"protocol": "https",
					"host": [
						"pi2hscwpkz",
						"us-east-1",
						"awsapprunner",
						"com"
					],
					"path": [
						"api",
						"spartans",
						"2"
					]
				}
			},
			"response": []
		},
		{
			"name": "Delete One Spartan",
			"request": {
				"method": "DELETE",
				"header": [],
				"url": {
					"raw": "https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/135",
					"protocol": "https",
					"host": [
						"pi2hscwpkz",
						"us-east-1",
						"awsapprunner",
						"com"
					],
					"path": [
						"api",
						"spartans",
						"135"
					]
				}
			},
			"response": []
		},
		{
			"name": "Search Spartans",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/search?nameContains=Nels&gender=Male",
					"protocol": "https",
					"host": [
						"pi2hscwpkz",
						"us-east-1",
						"awsapprunner",
						"com"
					],
					"path": [
						"api",
						"spartans",
						"search"
					],
					"query": [
						{
							"key": "nameContains",
							"value": "Nels"
						},
						{
							"key": "gender",
							"value": "Male"
						}
					]
				}
			},
			"response": []
		},
		{
			"name": "Add One Spartan",
			"request": {
				"method": "POST",
				"header": [
					{
						"key": "Content-Type",
						"value": "application/json",
						"type": "text"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\n  \"name\": \"Elon\",\n  \"gender\": \"Male\",\n  \"phone\": 1234567890\n}",
					"options": {
						"raw": {
							"language": "json"
						}
					}
				},
				"url": {
					"raw": "https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans",
					"protocol": "https",
					"host": [
						"pi2hscwpkz",
						"us-east-1",
						"awsapprunner",
						"com"
					],
					"path": [
						"api",
						"spartans"
					]
				}
			},
			"response": []
		},
		{
			"name": "Update One Spartan",
			"request": {
				"method": "PUT",
				"header": [
					{
						"key": "Content-Type",
						"value": "application/json",
						"type": "text"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\n  \"name\": \"Updated Akbar\",\n  \"gender\": \"Male\",\n  \"phone\": 9874563210\n}"
				},
				"url": {
					"raw": "https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/2",
					"protocol": "https",
					"host": [
						"pi2hscwpkz",
						"us-east-1",
						"awsapprunner",
						"com"
					],
					"path": [
						"api",
						"spartans",
						"2"
					]
				}
			},
			"response": []
		},
		{
			"name": "Partial Update One Spartan",
			"request": {
				"method": "PATCH",
				"header": [
					{
						"key": "Content-Type",
						"value": "application/json",
						"type": "text"
					}
				],
				"body": {
					"mode": "raw",
					"raw": "{\n  \"name\": \"Snow\"\n}"
				},
				"url": {
					"raw": "https://pi2hscwpkz.us-east-1.awsapprunner.com/api/spartans/126",
					"protocol": "https",
					"host": [
						"pi2hscwpkz",
						"us-east-1",
						"awsapprunner",
						"com"
					],
					"path": [
						"api",
						"spartans",
						"126"
					]
				}
			},
			"response": []
		}
	]
}