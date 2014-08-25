# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link do
    title "Google"
    url "https://www.google.com"
    comment 'homepage'
  end
end
