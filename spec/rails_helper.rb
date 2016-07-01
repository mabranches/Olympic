# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

    config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!
end
module Run100mRank
  def expected_ranking
    @score_values.collect do |values|
      values.min_by{|s| s[:value]}
    end.sort do |a,b|
      [a[:value] ,b[:athlete].age, a[:athlete].name] <=>
        [b[:value], a[:athlete].age, b[:athlete].name]
    end
  end
end

module JavenlinThrowRank
  def expected_ranking
    @score_values.collect do |values|
      values.max_by{|s| s[:value]}
    end.sort do |a,b|
      [b[:value] ,b[:athlete].age, a[:athlete].name] <=>
        [a[:value], a[:athlete].age, b[:athlete].name]
    end
  end
end

class MockScores
  def initialize(n_athletes, n_scores, competition)
    @score_values = []
    @n_athletes = n_athletes
    @n_scores = n_scores
    @competition = competition
  end

  def create_scores
    athletes = []
    @n_athletes.times {athletes << FactoryGirl.create(:athlete)}
    @n_athletes.times.each_with_index do |i|
      @score_values << []
      @n_scores.times do
        score = FactoryGirl.create(:score, competition: @competition, athlete: athletes[i])
        @score_values[i] << {value: score.value, athlete: score.athlete}
      end
    end
  end

end

class MockJavelinScores < MockScores
  include JavenlinThrowRank
end

class MockRun100mScores < MockScores
  include Run100mRank
end

RSpec.shared_examples "competition rank" do |competition_type, n_athletes,
  score_by_athlete, status, mock_class|
  it 'should show ranking in correct order' do
    competition = create(competition_type, status: :running)
    mock_scores = mock_class.new(n_athletes, score_by_athlete, competition)
    mock_scores.create_scores
    #sort array in expected order
    expected_ranking = mock_scores.expected_ranking

    competition.update_attributes!(status: status)

    get :rank, competition_id: competition.id

    expect(response).to have_http_status(:ok)
    result = json_response
    result[:data].each_with_index do |score, i|
      expect(score[:attributes][:result]).to eq(expected_ranking[i][:value].to_f.to_s  + competition.unity)
      expect(score[:attributes][:'athlete-name']).to eq(expected_ranking[i][:athlete].name)
    end
  end
end
