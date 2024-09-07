Feature: Register users

  Background:
    * url 'https://reqres.in'

Scenario: register a valid user
* def user =
"""
     {
      "email": "eve.holt@reqres.in",
      "password": "pistol"
      }
      """

Given path '/api/register'
And request user
When method post
Then status 200

#* def id = response.id
#* print 'created id is: ', id

  @invalid_user
  Scenario: register an invalid user
    * def user =
     """
     {
      "email": "",
      "password": "pistol"
      }
      """

    Given path '/api/register'
    And request user
    When method post
    Then status 400
    And match response.error == 'Missing email or username1'


#* def id = response.id
#* print 'created id is: ', id

  @valid_user
  Scenario: register a valid user from file
    * def valid_user = read('classpath:data/users/valid_user.json')
    * print valid_user

    Given path 'api/users'
    And request valid_user
    When method post
    Then status 201
    And match response.password == valid_user.password
    And match response.email == valid_user.email
    And match response.job == valid_user.job

    * print 'register user id is: ', response.id



#* def id = response.id
#* print 'created id is: ', id