Feature: Search pet

  Background:
    * url 'https://petstore.swagger.io'

  Scenario: search a pet
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

    Given path 'v2/pet/', petId
    When method get
    Then status 200
    And match response.id == petId

