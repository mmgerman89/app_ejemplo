FactoryGirl.define do
  factory :user do
    name                  "Homero Simpson"
    email                 "mrx@gmail.com"
    password              "foobar"
    password_confirmation "foobar"
    bypass_humanizer      true
  end
end