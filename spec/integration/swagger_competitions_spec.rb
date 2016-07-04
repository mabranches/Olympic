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

      response 201, 'success' do
        let(:competition) { {data:{ type: 'competitions', attributes:{type:'Run100m', name: 'competition1'} }} }
        run_test!
      end

      response 400, 'invalid request' do
        let(:competition) { {data:{ attributes:{} }} }
        run_test!
      end
    end
  end
  path '/v1/competitions/{id}' do
    get 'Retrieves details about a competition' do
      consumes 'application/vnd.api+json'
      produces 'application/vnd.api+json'
      parameter :id, in: :path, type: :string

      response 200, 'Competition found.' do
        let(:competition) {FactoryGirl.create(:competition)}
        let(:id) {competition.id}
        run_test!
      end

      response 404, 'Competition not found.' do
        let(:id) {1234}
        run_test!
      end
    end
  end
end
