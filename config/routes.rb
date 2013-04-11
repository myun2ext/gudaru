Gudaru::Application.routes.draw do
  root to: 'home#index'

  resources :channels do
    resources :messages
  end

  resources :messages

  resources :users
end
