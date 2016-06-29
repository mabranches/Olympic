Rails.application.routes.draw do

  namespace :v1 do
    jsonapi_resources :competitions  do
      jsonapi_resources :scores , only: [:index, :show] do
      end
      jsonapi_resources :athletes, only: [:index, :show] do
        jsonapi_resources :scores do
        end
      end
      get :types, on: :collection
    end

    jsonapi_resources :athletes do
      jsonapi_resources :scores, only: [:index, :show] do
      end
      jsonapi_resources :competitions, only: [:index, :show] do
      end
    end

  end
end
