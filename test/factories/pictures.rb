# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :picture do
    caption "MyString"
    description "MyText"
    pictureable nil
  end
end
