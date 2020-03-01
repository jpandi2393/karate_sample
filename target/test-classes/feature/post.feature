Feature: Update a users list
  Background:
    * url 'https://reqres.in'
    * header Content_Type = 'application/json'
    * header Authorization = 'Bearer_bL9Ect6wjK7LqyICJLh9MvBuBqRQgOKVchmC'
Scenario: Create a User
  Given path '/api/users'
  And request {"name": "morpheus","job": "leader"}
  When method post
  Then status 201