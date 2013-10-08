# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    user_id 1
    fname "MyString"
    lname "MyString"
    address_line_1 "MyString"
    address_line_2 "MyString"
    gender "MyString"
    date_of_birth "MyString"
    marital_status "MyString"
    city "MyString"
    state "MyString"
    country "MyString"
    pincode "MyString"
    mobile_no "MyString"
    org_name "MyString"
    designation "MyString"
    profession "MyString"
  end
end
