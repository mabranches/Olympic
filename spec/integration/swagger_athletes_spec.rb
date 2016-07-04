require 'rails_helper'
require 'swagger_rails/rspec/dsl'

describe 'Olympic API' do
  extend SwaggerRails::RSpec::DSL

  path '/v1/athletes' do

    post 'creates a new athlete' do
      consumes 'application/vnd.api+json'
      produces 'application/vnd.api+json'
      parameter :athletes, in: :body, required: true,
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
                  required: [:name, :type],
                  properties:{
                    name: {type: :string},
                    type: {type: :string}
                  }
                }
              }
            }
          }
        }

      response 201, 'success' do
        let(:data) { {data:{ type: 'athletes', attributes:{type:'Run100m', name: 'athlete'} }} }
        run_test!
      end

      response 400, 'invalid request' do
        let(:data) { {data:{ attributes:{} }} }
        run_test!
      end
    end
  end
end
