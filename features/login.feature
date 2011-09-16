Feature: Login
  In order to get access to protected sections of the site
  A user
  Should be able to login

    Scenario: User is not signed up
      Given I am not logged in
      And no user exists with an email of "user@sohbet.com"
      When I go to the login page
      And I sign in as "user@sohbet.com/please"
      Then I should see "Invalid email or password."
      And I go to the home page
      And I should be logged out

    Scenario: User enters wrong password
      Given I am not logged in
      And I am a user named "foo" with an email "user@sohbet.com" and password "please"
      When I go to the login page
      And I sign in as "user@sohbet.com/wrongpassword"
      Then I should see "Invalid email or password."
      And I go to the home page
      And I should be logged out

    Scenario: User login successfully with email
      Given I am not logged in
      And I am a user named "foo" with an email "user@sohbet.com" and password "please"
      When I go to the login page
      And I sign in as "user@sohbet.com/please"
      Then I should see "Signed in successfully."
      And I should see "You are logged in as user@sohbet.com" within "#user-navigation"
      And I should be logged in
      When I return next time
      Then I should be already logged in
