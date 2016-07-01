FactoryGirl.define do
  factory :score do
    value {rand(100)}
    athlete
    competition
  end
end
