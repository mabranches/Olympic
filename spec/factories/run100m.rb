FactoryGirl.define do
  factory :run100m do
    sequence(:name) {|n| "competition#{n}"}
    type {CompetitionType.all.sample.name}
    status {[:running, :finished].sample}
  end
end
