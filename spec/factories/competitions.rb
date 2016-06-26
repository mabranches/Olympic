FactoryGirl.define do
  factory :competition do
    sequence(:name) {|n| "competition#{n}"}
    type {CompetitionType.all.sample.name}
    status {[:running, :finished].sample}
  end
end
