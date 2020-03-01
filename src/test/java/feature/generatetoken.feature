Feature: check generated token by using API    
  Background:
    * url 'https://reqres.in'
    * header Content_Type = 'application/json'
    * header Authorization = 'Bearer_EoXgdQ683Q2ikEGDDM8mD3Faa_KndxfWdJ3e'
Scenario: Create a User
  Given path '/api/users'
  And request {"name": "morpheus","job": "zion resident"}
  When method put   
  Then status 200
  
  