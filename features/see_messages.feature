Feature: See Messages
  In order to communicate
  As a user
  I want to be able to see messages of other user

  Scenario: See all message titles
    Given there is a User "Tim Cook"
    And "Tim Cook" has posted the message "lets talk" with title "Important message"
    And there is a User "Mark Twain"
    And "Mark Twain" has posted the message "Here is the list" with title "My best books"
    When I visit the messages page
    Then I should see "Important message"
    And I should see "from Tim Cook"
    But I should not see "lets talk"
    And I should see "My best books"
    And I should see "from Mark Twain"
    But I should not see "Here is the list"

  Scenario: See message detail
    Given there is a User "Tim Cook"
    And "Tim Cook" has posted the message "lets talk" with title "Important message"
    When I visit the messages page
    And I follow "Important message"
    And I should see "from Tim Cook"
    But I should see "lets talk"
