require 'rails_helper'

RSpec.describe V1::CompetitionsController, type: :controller do

  let(:json_response){JSON.parse(response.body, symbolize_names: true)}
  describe 'GET #index' do
    before do
      30.times do
        create(:competition)
      end
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
      expect(["run100ms", "javelin-throws"]).to include(competition[:type])
      expect(['running','finished']).to include(competition[:attributes][:status])
      expect(competition[:attributes][:name]).
        to a_string_starting_with('competition')
    end
  end
  describe 'GET #show' do
    context 'competition exists' do
      before do
        @competition = create(:competition)
      end
      it 'shoud show data' do
        get :show, id: @competition.id
        expect(response).to have_http_status(:ok)
        data = json_response[:data]
        expect(data[:id]).to eq(@competition.id.to_s)
        expect(data[:attributes][:name]).to eq(@competition.name)
        expect(data[:attributes][:status]).to eq(@competition.status)
      end
    end
    context 'competition don\'t exist' do
      it 'should return error' do
        get :show, id: 1
        expect(response).to have_http_status(:not_found)
        data = json_response#[:data][0]
        expect(data).to have_key(:errors)
        expect(data[:errors][0][:title]).to eq("Record not found")
        expect(data[:errors][0][:detail]).to eq("The record identified by 1 could not be found.")
      end
    end
  end

  describe 'PATCH #update' do

      #PATCH update
      #--competicao nao existe
        #altera competicao
      #altera competicao
      #altera nome  da competicao
      #altera status da competicao
  end

  describe 'POST #create' do
      #POST create
        #cria uma competicao nova
        #tenta criar com partes faltando
      #
  end

  describe 'GET #types' do
    it "should return types" do
      controller.request.env['REQUEST_URI'] = 'http://example.com/competitions/types'
      controller.request.env['PATH_INFO'] = '/competitions/types'
      get :types
      result = json_response
      expect(result[:data].length).to eq(CompetitionType.all.length)
    end
  end

  describe 'GET #rank' do
    context 'javelin-throw competition' do
      it_should_behave_like 'competition rank', :javelin_throw, 40, 3, :finished, MockJavelinScores
    end
    context 'run100m competition' do
      it_should_behave_like 'competition rank', :run100m, 40, 1, :finished, MockRun100mScores
    end
    context 'running javelin-throw competition' do
      it_should_behave_like 'competition rank', :javelin_throw, 40, 3, :running, MockJavelinScores
    end
  end

end
