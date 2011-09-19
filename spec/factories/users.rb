# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    # firstname "Han"
    # lastname "Solo"
    password "secret"
    password_confirmation "secret"
    #email "#{firstname}.#{lastname}@starwars.com"
    sequence(:email) do |n|
      "email#{n}@sohbetapp.com"
    end
  end
end
