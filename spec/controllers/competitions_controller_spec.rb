require 'rails_helper'

RSpec.describe CompetitionsController, type: :controller do

  let(:json_response){JSON.parse(response.body, symbolize_names: true)}

  describe 'GET #index' do
    before(:all) do
      30.times do
        create(:competition)
      end
    end

    before do
      get :index
      @result = json_response
    end

    it "resource in correct format" do
      expect(response).to have_http_status(:ok)
      expect(@result).to have_key(:data)
      expect(@result).to have_key(:links)
    end

    it 'resouce with correct attributes' do
      competition = @result[:data].sample
      expect(["run100ms", "javelin-throws"]).to include (competition[:type])
      expect(competition[:attributes][:name]).
        to a_string_starting_with('competition')
    end
  end
end
