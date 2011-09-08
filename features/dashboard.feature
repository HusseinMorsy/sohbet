Feature: Dashboard
  In order to see an overview of the project
  A User
  Should be able to the the last messages and meetings

  Scenario: User is not logged in
    Given I am not logged in
    When I go to the home page
    Then I should see "Dashboard"
    And I should see "Welcome to the Sohbet app"
