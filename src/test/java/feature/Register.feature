Feature: Generate token by using post method.   
  Background:
    * url 'https://reqres.in'
    * header Content_Type = 'application/json'
    * header Authorization = 'Bearer_ZQBShnyqLIOUTrBi_Lw02Sycdr0Tc3NkAtik'
Scenario: Create a User
  Given path '/api/register'
  And request {"email": "eve.holt@reqres.in", "password": "pistol"}
  When method post
  Then status 200