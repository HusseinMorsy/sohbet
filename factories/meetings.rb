# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meeting do
    title "Scrum meeting"
    body "this are the details"
    date Date.today+1.week
    association :user
  end

end
