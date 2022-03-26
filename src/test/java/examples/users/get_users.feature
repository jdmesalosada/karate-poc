Feature: Get Users

  Background:
    * url 'https://reqres.in'

  @get_users
  Scenario Outline: get users by id
    Given path '/api/users/<id>'
    When method get
    Then status 200
    And match response.data.id == <id>
    And match response.data.first_name == '<first_name>'
    Examples:
      | id | first_name |
      | 1  | George     |
      | 2  | Janet      |
      | 3  | Emma 2      |