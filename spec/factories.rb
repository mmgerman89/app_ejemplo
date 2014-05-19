FactoryGirl.define do
  factory :user do
    name                  "Homero Simpson"
    email                 "mrx@gmail.com"
    password              "foobar"
    password_confirmation "foobar"
  end
end