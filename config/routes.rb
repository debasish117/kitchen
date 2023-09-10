Rails.application.routes.draw do

  # devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants do
        resources :items
      end
      resources :users do
        resources :contacts
      end
      resources :customers
    end
  end
  post 'authenticate', to: 'authentication#authenticate'
end