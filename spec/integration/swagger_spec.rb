require 'rails_helper'
require 'swagger_rails/rspec/dsl'

describe 'Olympic API' do
  extend SwaggerRails::RSpec::DSL

  path '/v1/competitions' do

    post 'creates a new competition' do
      consumes 'application/vnd.api+json'
      produces 'application/vnd.api+json'
      parameter :data, in: :body, required: true,
        description: "Data for a new competition",
        schema: {
            type: :object,
            properties:{
              type: {type: :string},
              attributes: {
                type: :object,
                properties:{
                  name: {type: :string},
                  type: {type: :string}
                }
              }
            }
      }

      response 201, 'success' do
        let(:data) { {data:{ type: 'competitions', attributes:{type:'Run100m', name: 'competition1'} }} }
        run_test!
      end

      response 400, 'invalid request' do
        let(:data) { {data:{ attributes:{} }} }
        run_test!
      end
    end
  end
end
