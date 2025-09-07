@Put
Feature: Perform a PUT action 
Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * header x-api-key = 'reqres-free-v1'

Scenario: PUT Demo

Given path '/api/users/2'
And request {'name': 'santosh', 'job':'Tester'}
When method PUT
Then status 200
And print response
And print responseStatus
