FactoryGirl.define do
  factory :user do
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
  
  factory :article do
    author   "Nathan Moeller"
    email    "ndmoeller@wisc.edu"
    title "A super cool article"
    content "This is all of the content"
  end
end