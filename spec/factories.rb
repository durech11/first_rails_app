
FactoryGirl.define do

  # This will guess the User class
  factory :user do
    first_name "John"
    last_name  "Doe"
    admin false
  end

  # This will use the User class (Admin would have been guessed)
  factory :admin, class: User do
    first_name "Admin"
    last_name  "User"
    admin      true
  end

  factory :product do
    name "Xdiavel"
    details "Low speed excitement"
    color "red"
  end

  factory :comment do
    rating 4
    body "Really Awesome!"
  end

end