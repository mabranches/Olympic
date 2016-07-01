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
    #sem competicao - deve falhar
    #sem atleta - deve falhar
    #competicao encerrada - deve falhar
    #sucesso
  end
  describe 'PATCH #update' do
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
