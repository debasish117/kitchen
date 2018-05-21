Rails.application.routes.draw do

  # devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :items
      resources :restaurants
      resources :users do
        resources :contacts
      end
    end
  end
  post 'authenticate', to: 'authentication#authenticate'
end
