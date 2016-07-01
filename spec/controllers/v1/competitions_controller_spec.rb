require 'rails_helper'
#simple
#GET    /v1/competitions(.:format) - done
#POST   /v1/competitions(.:format)
#GET    /v1/competitions/:id(.:format)
#PATCH  /v1/competitions/:id(.:format)
#PUT    /v1/competitions/:id(.:format)
#DELETE /v1/competitions/:id(.:format)
#GET    /v1/competitions/types(.:format)
#atletas
#GET    /v1/athletes/:athlete_id/competitions(.:format)                            v1/competitions#index
#GET    /v1/athletes/:athlete_id/competitions/:id(.:format)                        v1/competitions#show

  def run100m_rank(score_values)
    score_values.collect do |values|
      values.min_by{|s| s[:value]}
    end.sort do |a,b|
      [a[:value] ,b[:athlete].age, a[:athlete].name] <=>
        [b[:value], a[:athlete].age, b[:athlete].name]
    end
  end
  def javalin_throw_rank(score_values)
    score_values.collect do |values|
      values.max_by{|s| s[:value]}
    end.sort do |a,b|
      [b[:value] ,b[:athlete].age, a[:athlete].name] <=>
        [a[:value], a[:athlete].age, b[:athlete].name]
    end
  end

  RSpec.shared_examples "competition rank" do |competition_type, n_athletes,
    score_by_athlete, status, rank_scores_method|
    it 'should show ranking in correct order' do
      competition = create(competition_type, status: :running)
      athletes = []
      n_athletes.times {athletes << create(:athlete)}

      #3 random score values for each athlete
      score_values = []
      n_athletes.times.each_with_index do |i|
        score_values << []
        score_by_athlete.times do
          score = create(:score, competition: competition, athlete: athletes[i])
          score_values[i] << {value: score.value, athlete: score.athlete}
        end
      end

      expected_ranking = send(rank_scores_method, score_values)
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
      #get SHOW
      #competicao existente
        #pega um competicao
      #--competicao nao existe
        #tenta competicao que nao existe

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

  RSpec.shared_examples "a measurable object" do |measurement, measurement_methods|
  measurement_methods.each do |measurement_method|
    it "should return #{measurement} from ##{measurement_method}" do
      expect(subject.send(measurement_method)).to eq(measurement)
    end
  end
end




  describe 'GET #rank' do
    context 'javelin-throw competition' do
      it_should_behave_like 'competition rank', :javelin_throw, 40, 3, :running, :javalin_throw_rank
    end
    context 'run100m competition' do
      it_should_behave_like 'competition rank', :run100m, 40, 1, :running, :run100m_rank
    end
    context 'running javelin-throw competition' do
    end
  end

end
