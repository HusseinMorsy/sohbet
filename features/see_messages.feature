Feature: See Messages
  In order to communicate
  As a user
  I want to be able to see messages of other user

  Scenario: See a message of another user
    Given there is a User "Tim Cook"
    And "Tim Cook" has posted the message "lets talk" with title "Important message"
    When I visit the messages page
    Then I should see "Important message"
    And I should see "from Tim Cook"
    And I should see "lets talk"
