Feature: check users list by using API    
  Background:
    * url 'https://reqres.in'
    * header Content_Type = 'application/json'
Scenario: Create a User
  Given path '/api/users'
  When method get
  Then status 200
  
  And def users_response = response
  
  Then match users_response.data[*].first_name contains ["Emma"]
  
  