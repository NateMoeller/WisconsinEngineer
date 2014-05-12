FactoryGirl.define do
  factory :user do
    name     "Nathan Moeller"
    email    "ndmoeller@wisc.edu"
    password "njdouble"
    password_confirmation "njdouble"
	admin true
  end
  
  factory :article do
    author   "Nathan Moeller"
    email    "ndmoeller@wisc.edu"
    title "A super cool article"
    content "This is all of the content"
  end
end