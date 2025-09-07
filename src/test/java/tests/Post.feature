@post
Feature: POST API REQUEST

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * header x-api-key = 'reqres-free-v1'
    * def expectedOutput = read("response.json")
    * def requestbody = read("request.json")

  Scenario: Post Request validation
    Given path '/users'
    And request {"name": "santosh", "job":"IT"}
    When method POST
    Then status 201
    And print response
    Then match response.name == 'santosh'
    And match response.job == 'IT'
    And match response.id == '#notnull'

  #Post with assertions
  Scenario: Post Request validation with assertions
    Given path '/users'
    And request {"name": "Kotha Santosh", "job":"IT"}
    When method POST
    Then status 201
    And print response
    And match response == {"name": "Kotha Santosh", "job": "IT", "id": "#string", "createdAt": "#ignore"}

  #Post with assertions using json file
  Scenario: Post Request validation with assertions using json file
    Given path '/users'
    And request {"name": "Kotha Santosh", "job":"IT"}
    When method POST
    Then status 201
    And print response
    And match response == expectedOutput

  #Post with request using json file
  Scenario: Post Request validation with request using json file
    Given path '/users'
    And request requestbody
    When method POST
    Then status 201
    And print response
    And match response == expectedOutput
