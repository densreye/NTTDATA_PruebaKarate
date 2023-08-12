Feature: Login API

  Background:
    * url "https://api.demoblaze.com"
    * path "/login"
    * request {"username": "#(username)", "password": "#(password)"}
    * def responsedata = read("response-data-get.json")

  Scenario: Login correct
    And request { "username": "steevenzambrano202308", "password": "123" }
    When method post
    Then status 200

  Scenario: Login with password incorrect
    And request { "username": "steevenzambrano19965", "password": "1235" }
    When method post
    Then status 200