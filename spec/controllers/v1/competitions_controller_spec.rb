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
RSpec.describe V1::CompetitionsController, type: :controller do

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
      expect(["run100ms", "javelin-throws"]).to include(competition[:type])
      expect(['running','finished']).to include(competition[:attributes][:name]).
      expect(competition[:attributes][:name]).
        to a_string_starting_with('competition')
    end
  end
  describe 'GET #show' do
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
      #POST create
        #cria uma competicao nova
        #tenta criar com partes faltando
      #
    end
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

  describe 'GET #rank'
    #rank do javelin-throw
    #rank do run10mm
    #rank com competicao nao encerrada
  end

end
