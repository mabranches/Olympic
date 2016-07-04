require 'rails_helper'

RSpec.describe V1::ScoresController, type: :controller do
  let(:valid_score_json) do
    {
      type: 'scores',
      attributes: {
        value: rand(100)
      }
    }
  end
  let(:json_response){JSON.parse(response.body, symbolize_names: true)}

  describe 'GET #index' do
    #com competicao
    #com atleta
    #com competicao e atleta
    context 'When passing a invalid athlete' do
      context 'trying to get all scores on a competition' do
        before do
          @competition = create(:javelin_throw, status: :running)
          MockJavelinScores.new(5, 3, @competition).create_scores
        end

        it 'should return empty result' do
          expect { get :index, competition_id: @competition.id, athlete_id: 123 }.
            to make_database_queries(count: 2)

          expect(response).to have_http_status(:ok)
          expect(response.content_type).to eq('application/vnd.api+json')
          expect(json_response[:data]).to be_empty
        end
      end
    end

    context 'When getting all scores of an athlete in a competition' do
      before do
        @competition = create(:javelin_throw, status: :running)
        @mock = MockJavelinScores.new(5, 3, @competition)
        @mock.create_scores
      end

      it 'should only return scores for this athlete' do
        athlete = @mock.athletes.sample
        expect { get :index, competition_id: @competition.id, athlete_id: athlete.id}.
          to make_database_queries(count: 2)
        expect(response).to have_http_status(:ok)
        expect(json_response[:data].length).to eq(3)
        expect(json_response[:data].sample[:attributes][:'athlete-id']).to eq(athlete.id)
        expect(json_response[:data].sample[:attributes][:'competition-id']).to eq(@competition.id)
      end
    end
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
        expect(response).to have_http_status(:created)
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
        before do
        end
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
