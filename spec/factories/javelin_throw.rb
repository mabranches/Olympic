FactoryGirl.define do
  factory :javelin_throw do
    sequence(:name) {|n| "competition#{n}"}
    status {[:running, :finished].sample}
  end
end
