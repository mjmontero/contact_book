# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    firstname "first name"
    lastname "last name"
    email "example@example.com"
    phonenumber "12345"

  end
end
