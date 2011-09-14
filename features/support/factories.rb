# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@sohbetapp.com"
  end

  factory :message do
    title "Best message"
    body "this are the details"
  end

  factory :user do
    email { Factory.next(:email) }
    password "secret"
    password_confirmation "secret"
  end
end
