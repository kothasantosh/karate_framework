Feature: Sample API Tests

  Scenario: Test a sample
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
