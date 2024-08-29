Feature: Update a pet

  Background:
    * url 'https://petstore.swagger.io'

  Scenario: Update a pet
    * def add_a_pet_request =
      """
    {
      "id": 0,
      "category": {
        "id": 0,
        "name": "string"
      },
      "name": "doggie",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
      """

    Given path '/v2/pet'
    And request add_a_pet_request
    When method post
    Then status 200

    * def petId = response.id
    * print 'pet id is: ', petId

    * def update_a_pet_request =
      """
    {
      "id": #(petId),
      "category": {
        "id": 0,
        "name": "string"
      },
      "name": "doggie updated",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "sold"
    }
      """

    Given path 'v2/pet/'
    And request update_a_pet_request
    When method put
    Then status 200
    And match response.id == petId

    * def statusSoldQuery = {status: 'sold'}
    Given path 'v2/pet/findByStatus'
    And params statusSoldQuery
    When method get
    Then status 200

    * def currentId = response.find(x => x.id == petId).id
    * print "actual id:", petId
    * print "current id is:", currentId

    * match currentId == petId

