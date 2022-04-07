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
      | 3  | Emma 2     |

  @get_users
  Scenario Outline: get users by id Datadriven
    Given path '/api/users/<id>'
    When method get
    Then status 200
    And match response.data.id == <id>
    And match response.data.first_name == '<first_name>'
    Examples:
      | read('classpath:data/users/validate_users.csv') |


  @get_users
  Scenario Outline: get users with id <id> and first name <first_name>  Datadriven 2
    * def people = read('classpath:data/users/validate_users.csv')
    Given path '/api/users/<id>'
    When method get
    Then status 200
    And match response.data.id == <id>
    And match response.data.first_name == '<first_name>'
    Examples:
      | people |

  Scenario: Get user with specific id
    Given path '/api/users/5'
    When method GET
    Then status 200
    #And match $ == {id:"1234",name:"John Smith"}
    And match $.data.id == 5