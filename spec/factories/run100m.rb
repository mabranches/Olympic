FactoryGirl.define do
  factory :run100m do
    sequence(:name) {|n| "competition#{n}"}
    status {[:running, :finished].sample}
  end
end
