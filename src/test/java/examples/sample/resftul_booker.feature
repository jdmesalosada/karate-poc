Feature: Restful booker

  Background:
    * url 'https://restful-booker.herokuapp.com'

  Scenario: delete booking
    * def login =
      """
     {
      "username" : "admin",
      "password" : "password123"
      }
      """

    Given path 'auth'
    And request login
    When method post
    Then status 200

    * print response.token

    * def token = response.token

    * header Content-Type = 'application/json'
    #* header Authorisation = 'Basic ' + token
    * header Authorisation = 'Basic YWRtaW46cGFzc3dvcmQxMjM=]'

    Given path 'booking/1'
    When method delete
    Then status 201
