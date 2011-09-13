Given /^no user exists with an email of "(.*)"$/ do |email|
  User.find(:first, :conditions => { :email => email }).should be_nil
end

Given /^I am a user named "([^"]*)" with an email "([^"]*)" and password "([^"]*)"$/ do |name, email, password|
  User.new(:name => name,
            :email => email,
            :password => password,
            :password_confirmation => password).save!
end

Then /^I should be already logged in$/ do
  And %{I should see "Logout"}
end

Given /^I am signed up as "(.*)\/(.*)"$/ do |email, password|
  Given %{I am not logged in}
  When %{I go to the sign up page}
  And %{I fill in "Email" with "#{email}"}
  And %{I fill in "Password" with "#{password}"}
  And %{I fill in "Password confirmation" with "#{password}"}
  And %{I press "Sign up"}
  Then %{I should see "You have signed up successfully. If enabled, a confirmation was sent to your e-mail."}
  And %{I am logout}
end

Then /^I logout$/ do
  visit('/users/sign_out')
end

Given /^I am logged out/ do
  Given %{I logout}
end

Given /^I am not logged in$/ do
  Given %{I logout}
end

When /^I sign in as "(.*)\/(.*)"$/ do |email, password|
  Given %{I am not logged in}
  When %{I go to the sign in page}
  And %{I fill in "Email" with "#{email}"}
  And %{I fill in "Password" with "#{password}"}
  And %{I press "Sign in"}
end

Then /^I should be logged in$/ do
  Then %{I should see "Signed in successfully."}
end

When /^I return next time$/ do
  And %{I go to the home page}
end

Then /^I should be logged out$/ do
  And %{I should see "Sign up"}
  And %{I should see "Login"}
  And %{I should not see "Logout"}
end

Then /^a User with "([^"]*)" with email "([^"]*)" should exists$/ do |name, email|
  firstname , lastname = name.split
  User.where(:email=>email, :firstname => firstname).should_not be_empty
end
