# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    title "Best message"
    body "this are the details"
  end

  factory :message_comments do
    title "Best message"
    body "this are the details"
  end
end
