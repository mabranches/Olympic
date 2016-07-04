require 'rails_helper'
require 'swagger_rails/rspec/dsl'

describe 'Olympic API' do
  extend SwaggerRails::RSpec::DSL

  path '/v1/athletes' do

    post 'creates a new athlete' do
      consumes 'application/vnd.api+json'
      produces 'application/vnd.api+json'
      parameter :athlete, in: :body, required: true,
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
                    age: {type: :integer},
                    sex: {type: :string}
                  }
                }
              }
            }
          }
        }

      response 201, 'success' do
        let(:athlete) { {data:{ type: 'athletes', attributes:{ name: 'athlete', age: rand(10..50), sex: ['f','m'].sample} }} }
        run_test!
      end

      response 400, 'invalid request' do
        let(:athlete) { {data:{ attributes:{} }} }
        run_test!
      end
    end
  end
end
