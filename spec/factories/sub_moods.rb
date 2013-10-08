# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sub_mood do
    mood nil
    name "MyString"
    description "MyString"
    sub_mood_picture "MyString"
  end
end
