Feature: Logout
  To protect my account from unauthorized access
  A logged in user
  Should be able to logout

    Scenario: User logout
      Given I am a user named "foo" with an email "user@sohbetapp.com" and password "secret"
      When I sign in as "user@sohbetapp.com/secret"
      Then I should be logged in
      And I logout
      Then I should see "Signed out"
      When I return next time
      Then I should be logged out
