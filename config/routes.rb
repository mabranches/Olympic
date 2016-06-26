Rails.application.routes.draw do

  jsonapi_resources :competitions, except: [:new, :edit] do
    get :types, on: :collection
  end

  jsonapi_resources :run100ms
  jsonapi_resources :javelin_throws

end
