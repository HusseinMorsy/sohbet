Given /^"([^"]*)" has posted the message "([^"]*)" with title "([^"]*)"$/ do |name, body, title|
  user = User.find_by_name(name)
  user.should_not be_nil
  Factory(:message, :user=>user, :body => body, :title => title)
end

When /^I visit the messages page$/ do
  visit(messages_path)
end
