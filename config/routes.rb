Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :dogs, :listings, :users, :charges

  root 'pages#home'
  get '/map', to: 'pages#map', as: 'map'
  post '/rate' => 'rater#create', :as => 'rate'

  get '/listings/index/:sort', to: 'listings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
