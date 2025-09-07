Feature: Perform a Delete action

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * header x-api-key = 'reqres-free-v1'

  Scenario: Delete Demo
    Given path 'users/2'
    When method DELETE
    Then status 204
    And print response
