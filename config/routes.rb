Rails.application.routes.draw do

  jsonapi_resources :competitions, except: [:new, :edit] do
    get :types, on: :collection
  end
end
