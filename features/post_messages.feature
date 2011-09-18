Feature: Post messages
  In order to communicate
  As a user
  I want to be able to post a message

  Scenario: Create a message
    Given I am logged in as "Luke Skywalker"
    And I am on the messages page
    When I follow "New message"
    And  I fill in "Title" with "Important message"
    And  I fill in "Body" with "Here are the details"
    And  I press "Create message"
    Then I should see "Message successfully created"
    And I should see "Here are the details"
    And I should see "from Luke Skywalker"
