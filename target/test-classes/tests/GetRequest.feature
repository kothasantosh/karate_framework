@get
Feature: Validate GET request

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * header x-api-key = 'reqres-free-v1'

  # simple get request
  Scenario: Send GET request and validate response status code
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders

  # Get with Background
  Scenario: Send GET request and validate response status code with background
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders

  # Get with Path, Param
  Scenario: Send GET request and validate response status code with background, path and params
    Given path '/users?page=2'
    And param page = 2
    When method GET
    Then status 200
    And print response

  # Asserstions
  Scenario: Send GET request and validate asserstions
    Given path '/users?page=2'
    And param page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].name != null
    And assert response.data.length == 6
    And match response.data[3].id == 10
