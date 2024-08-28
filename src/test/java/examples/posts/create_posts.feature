Feature: create posts

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: create a valid post
    * def valid_post =
      """
      {
        "title": "algo",
        "body": "post body",
        "userId": 1
        }
      }
      """

    Given path 'posts'
    And request valid_post
    When method post
    Then status 201