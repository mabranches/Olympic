
#competicao
#GET    /v1/competitions/:competition_id/athletes(.:format)                        v1/athletes#index
#GET    /v1/competitions/:competition_id/athletes/:id(.:format)                    v1/athletes#show

#nada
#GET    /v1/athletes(.:format)                                                     v1/athletes#index
#POST   /v1/athletes(.:format)                                                     v1/athletes#create
#GET    /v1/athletes/:id(.:format)                                                 v1/athletes#show
#PATCH  /v1/athletes/:id(.:format)                                                 v1/athletes#update
#PUT    /v1/athletes/:id(.:format)                                                 v1/athletes#update
#DELETE /v1/athletes/:id(.:format)                                                 v1/athletes#destroy
require 'rails_helper'
RSpec.describe V1::, type: :controller do

  describe 'GET #index' do
    #com competicao
    #sem competicao

  end
  describe 'GET #show' do
    #com competicao
      #atleta existe
      #atleta nao existe
    #sem competicao
      #atleta existe
      #atleta nao existe
  end
  describe 'POST #create' do
    #cria atleta
    #tenta criar sem todos os campos
  end
  describe 'PATCH #update' do
    #tenta atualizar
    #atualizar com valor invalido
  end
  describe 'DELETE #destroy' do
    #remove atleta
      #deve remover os pontos associados
    #remove atleta que nao existe
  end
end
