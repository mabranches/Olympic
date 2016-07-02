require 'rails_helper'

#atleta + competicao
#GET    /v1/competitions/:competition_id/athletes/:athlete_id/scores(.:format)     v1/scores#index
#POST   /v1/competitions/:competition_id/athletes/:athlete_id/scores(.:format)     v1/scores#create
#GET    /v1/competitions/:competition_id/athletes/:athlete_id/scores/:id(.:format) v1/scores#show
#PATCH  /v1/competitions/:competition_id/athletes/:athlete_id/scores/:id(.:format) v1/scores#update
#PUT    /v1/competitions/:competition_id/athletes/:athlete_id/scores/:id(.:format) v1/scores#update
#DELETE /v1/competitions/:competition_id/athletes/:athlete_id/scores/:id(.:format) v1/scores#destroy

# atleta
#GET    /v1/athletes/:athlete_id/scores(.:format)                                  v1/scores#index
#GET    /v1/athletes/:athlete_id/scores/:id(.:format)                              v1/scores#show

#competicao
#GET    /v1/competitions/:competition_id/scores(.:format)                          v1/scores#index
#GET    /v1/competitions/:competition_id/scores/:id(.:format)                      v1/scores#show

#nada
#v1_scores GET    /v1/scores(.:format)                                                       v1/scores#index
#v1_score GET    /v1/scores/:id(.:format)                                                   v1/scores#show


RSpec.describe V1::ScoresController, type: :controller do
  let(:valid_score_json) do
    {
      type: 'scores',
      attributes: {
        value: rand(100)
      }
    }
  end

  describe 'GET #index' do
    #com competicao
    #com atleta
    #com competicao e atleta
    #todos
  end
  describe 'GET #show' do
    #com competicao
      #ponto existe
      #ponto nao existe
    #com atleta
      #ponto existe
      #ponto nao existe

  end
  describe 'POST #create' do
    #competicao encerrada - deve falhar
    before do
      @competition = create(:competition, status: :running)
      @athlete = create(:athlete)
      @request.env["HTTP_ACCEPT"] = 'application/vnd.api+json'
      @request.env["CONTENT_TYPE"] ='application/vnd.api+json'
    end

    it 'should create a new score' do
      expect{post :create, data: valid_score_json,
        competition_id: @competition.id, athlete_id: @athlete.id }.to change{Score.count}.by(1)
    end

    context 'when creating scores above limit' do
      before do
        #get competition with correct class
        @competition = Competition.find(@competition.id)
        (@competition.class::MAX_SCORES).times do
          create(:score, competition: @competition, athlete: @athlete)
        end
      end

      it 'should give an error' do
        expect{post :create, data: valid_score_json,
          competition_id: @competition.id, athlete_id: @athlete.id }.not_to change{Score.count}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH #update' do
    before do
      @request.env["HTTP_ACCEPT"] = 'application/vnd.api+json'
      @request.env["CONTENT_TYPE"] ='application/vnd.api+json'
    end

    context 'non existing score' do
      context 'when updating with valid score' do
        it 'should give a error' do
        end
      end
    end

    context 'existing score' do
      before do
        competition = create(:competition, status: :running)
        competition = Competition.find(competition.id)
        athlete = create(:athlete)
        @score = create(:score, competition: competition, athlete: athlete)
      end

      context 'when updating with valid score' do
         it 'should correctly update score' do
           score_json = valid_score_json
           score_json[:id] = @score.id
           expect{patch :update,id: @score.id, data: valid_score_json,
             competition_id: @score.competition.id,
             athlete_id: @score.athlete.id}.to change{Score.find(@score.id).
               value}.from(@score.value).to(score_json[:attributes][:value])
           result = JSON.parse(response.body)
           expect(response).to have_http_status(:ok)
         end
      end
    end
    #tenta atualizar
    #atualizar com valor invalido
    #atualiar com competicao encerrada
  end
  describe 'DELETE #destroy' do
    #remove pontuacao
    #remove pontuacao competicao encerrada - deve falhar
    #remove pontuacao nao existente
  end
end
