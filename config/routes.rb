Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :dogs
  resources :listings
  root 'pages#home'
  get '/map', to: 'pages#map', as: 'map'
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
