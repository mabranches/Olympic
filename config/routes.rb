Rails.application.routes.draw do

  namespace :v1 do
    jsonapi_resources :competitions  do
      jsonapi_relationships only: [:index]
      jsonapi_resources :athletes, only: [:index] do
        jsonapi_resources :scores, only: [:index, :create, :update] do
        end
      end
      get :rank
      get :types, on: :collection
    end

    jsonapi_resources :athletes do
      jsonapi_relationships only: [:index]
    end

    jsonapi_resources :scores, only: [:index, :show] do
    end

  end
end
