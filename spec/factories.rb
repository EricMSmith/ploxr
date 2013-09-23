FactoryGirl.define do
  factory :user do
    first_name  "Ernest"
    last_name		"Hemmingway"
    email    		"oldman@sea.com"
    password 		"foobar"
    password_confirmation "foobar"
  end
end