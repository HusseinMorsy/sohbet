@wip
Feature: Post meeting
  In order to hold a meeting with all persons who are involved in a project
  A User
  Should be able to post a meeting with date and time

  Scenario: Create a new meeting
    Given I am logged in as "Luke Skywalker"
    And I am on the meetings page
    When I follow "New Meeting"
    And  I fill in "Title" with "Important Meeting"
    And  I fill in "Body" with "Here are the details"
    And  I select "September 16, 2011 08:00" as the "date" date and time
    And  I press "Create Meeting"
    Then I should see "Meeting successfully created"
    And I should see "Important Meeting"
    And I should see "Here are the details"
    And I should see "from Luke Skywalker"
