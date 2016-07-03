require 'rails_helper'

RSpec.shared_examples "failed method" do |error_message|
  it 'Should have a error message' do
    score = subject
    expect(score.errors).not_to be_empty
    expect(score.errors.messages).to eq({competition: [error_message]})
  end
end

RSpec.describe Competition, type: :model do
  describe '.create' do

    subject do
      Score.create(value:rand(1..100), athlete: @athlete, competition: @competition)
    end

    context 'When athlete has maximum number of scores' do
      before do
        @competition = create(:javelin_throw, status: :running)
        mock = MockJavelinScores.new(1, 3, @competition)
        mock.create_scores
        @athlete = mock.athletes[0]
      end
      context 'When creating new score for athlete' do
        it {expect{subject}.not_to change{Score.count}}
        it_should_behave_like 'failed method', 'This competition only allow 3 scores.'
      end
    end
    context 'When creating score for a finished competition' do
      before do
        @competition = create(:javelin_throw, status: :finished)
        @athlete = create(:athlete)
      end
      it {expect{subject}.not_to change{Score.count}}
      it_should_behave_like 'failed method', 'Competition Finished. Can\'t add any more scores.'
    end
  end
end
