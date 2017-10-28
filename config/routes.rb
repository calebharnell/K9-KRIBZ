Rails.application.routes.draw do
  resources :dogs
  resources :listings
  root 'pages#home'

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
