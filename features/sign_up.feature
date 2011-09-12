Feature: Sign up
  In order to get access to protected sections of the site
  As a user
  I want to be able to sign up

    Background:
      Given I am not logged in
      And I am on the home page
      And I go to the login page

    Scenario: User signs up with valid data
      And I fill in the following:
        | Email                 | user@sohbet.com |
        | Password              | please          |
        | Password confirmation | please          |
      And I press "Sign up"
      Then I should see "Welcome! You have signed up successfully." 
      
    Scenario: User signs up with invalid email
      And I fill in the following:
        | Email                 | invalidemail    |
        | Password              | please          |
        | Password confirmation | please          |
      And I press "Sign up"
      Then I should see "is invalid"

    Scenario: User signs up without password
      And I fill in the following:
        | Email                 | user@sohbetapp.com |
        | Password              |                    |
        | Password confirmation | secret             |
      And I press "Sign up"
      Then I should see "can't be blank"

    Scenario: User signs up without password confirmation
      And I fill in the following:
        | Email                 | user@sohbetapp.com |
        | Password              | secret             |
        | Password confirmation |                    |
      And I press "Sign up"
      Then I should see "doesn't match confirmation"

    Scenario: User signs up with mismatched password and confirmation
      And I fill in the following:
        | Email                 | user@sohbetapp.com |
        | Password              | secret             |
        | Password confirmation | other              |
      And I press "Sign up"
      Then I should see "doesn't match confirmation"
