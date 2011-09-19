Feature: Comment messages
  In order to communicate
  As a user
  I want to be able to comment a message

  Scenario: Comment a message
    Given I am logged in as "Luke Skywalker"
    And there is a User "Tim Cook"
    And "Tim Cook" has posted the message "lets talk" with title "Important message"
    When I visit the messages page
    And I follow "Important message"
    And I follow "Add a comment"
    And I fill in "Comment" with "I have the same opinion"
    And I press "Comment"
    Then I should see "Thank you for the comment"
    And I should see "I have the same opinion"
    And I should see "from Luke Skywalker"
