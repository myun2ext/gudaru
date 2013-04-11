Gudaru::Application.routes.draw do
  root to: 'home#index'

  resources :channels

  resources :messages

  resources :users
end
