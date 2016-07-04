#GET    /v1/competitions/:competition_id/scores(.:format)
#GET    /v1/competitions/:competition_id/athletes(.:format)
#GET    /v1/competitions/:competition_id/athletes/:athlete_id/scores(.:format)
#POST   /v1/competitions/:competition_id/athletes/:athlete_id/scores(.:format)
#PATCH  /v1/competitions/:competition_id/athletes/:athlete_id/scores/:id(.:format)
#PUT    /v1/competitions/:competition_id/athletes/:athlete_id/scores/:id(.:format)
#GET    /v1/competitions/:competition_id/athletes(.:format)
#GET    /v1/competitions/:competition_id/rank(.:format)
#GET    /v1/competitions/types(.:format)
#PATCH  /v1/competitions/:id(.:format)
#DELETE /v1/competitions/:id(.:format)



require 'rails_helper'
require 'swagger_rails/rspec/dsl'

describe 'Olympic API' do
  extend SwaggerRails::RSpec::DSL

  path '/v1/competitions' do

    post 'creates a new competition' do
      consumes 'application/vnd.api+json'
      produces 'application/vnd.api+json'
      parameter :competition, in: :body, required: true,
        description: "Data for a new competition",
        schema: {
          type: :object,
          required: [:data],
          properties:{
            data:{
              type: :object,
              required: [:type, :attributes],
              properties:{
                type: {type: :string},
                attributes: {
                  type: :object,
                  required: [:name],
                  properties:{
                    name: {type: :string},
                  }
                }
              }
            }
          }
        }

      response 201, 'success' do
        let(:competition) { {data:{ type: 'competitions', attributes:{type:'Run100m', name: 'competition1'} }} }
        run_test!
      end

      response 400, 'invalid request' do
        let(:competition) { {data:{ attributes:{} }} }
        run_test!
      end
    end

    get 'list all competitions' do
      consumes 'application/vnd.api+json'
      produces 'application/vnd.api+json'
      response 200, 'Competition list' do
        before do
          15.times{create(:competition)}
        end
        run_test!
      end
    end
  end

  path '/v1/competitions/{id}' do
    get 'Retrieves details about a competition' do
    consumes 'application/vnd.api+json'
    produces 'application/vnd.api+json'
    parameter :id, in: :path, description: 'Competition ID',
      type: :string, required: true

      response 200, 'Competition found.' do
        let(:competition) {create(:competition)}
        let(:id) {competition.id}
        run_test!
      end

      response 404, 'Competition not found.' do
        let(:id) {1234}
        run_test!
      end
    end

    patch 'Update a competition' do
      consumes 'application/vnd.api+json'
      produces 'application/vnd.api+json'
      parameter :id, in: :path, type: :string
      parameter :competition, in: :body, required: true,
        description: "Data for a new competition",
        schema: {
          type: :object,
          required: [:type, :attributes],
          properties:{
            type:{type: :string},
            attributes: {
              type: :object,
              required: [:name, :type],
              properties:{
                name: {type: :string},
                type: {type: :string}
              }
            }
          }
        }
      response 200, 'competition updated.' do
        before do
          @competition = create(:competition)
        end
        let(:competition)do
          {
            data:{
              id: @competition.id,
              type: 'competitions',
              attributes:{
                name: 'competition_test'
              }
            }
          }
        end
        let(:id){@competition.id}
        run_test!
      end

      response 404, 'No competition found for update.' do
        let(:competition)do
          {
            data:{
              id: 1234,
              type: 'competitions',
              attributes:{
                name: 'competition_test'
              }
            }
          }
        end
        let(:id){1234}
        run_test!
      end
    end

    delete 'Deletes a competition' do
      consumes 'application/vnd.api+json'
      produces 'application/vnd.api+json'
      parameter :id, in: :path, type: :string

      before do
        @competition = create(:competition)
      end

      response 204, 'Competition deleted' do
        let(:competition) do
          {
            data:{
              id: @competition.id,
              type: 'competitions',
              attributes:{
                name: 'competition_test'
              }
            }
          }
        end
        let(:id){@competition.id}
        run_test!
      end
    end
  end
end
