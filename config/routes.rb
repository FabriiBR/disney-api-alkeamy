Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :characters, only: [ :index, :show, :update, :create, :destroy ] do
        get 'search/:query', to: 'characters#search', on: :collection
      end
      resources :films, only: [ :index, :show, :update, :create, :destroy ] do
        get 'search/:query', to: 'films#search', on: :collection
      end
    end
  end
  
end
