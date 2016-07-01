FactoryGirl.define do
  factory :athlete do
    sequence(:name) {|n| "athlete#{n}"}
    age {rand(15..40)}
    sex {[:m, :f].sample}
  end
end
