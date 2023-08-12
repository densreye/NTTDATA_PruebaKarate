Feature: SignUP API

  Background:
    * url "https://api.demoblaze.com"
    * path "/signup"
    * request {"username": "#(username)", "password": "#(password)"}
    * def responsedataMax = read("response-data-Max-get.json")

  Scenario: Post a user
    And request { "username": "steevenzambrano202309", "password": "123" }
    When method post
    Then status 200

  Scenario: Post a user existing
    And request { "username": "steevenzambrano19965", "password": "123" }
    When method post
    Then status 200
