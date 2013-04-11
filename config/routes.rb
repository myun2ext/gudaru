Gudaru::Application.routes.draw do
  resources :channels

  resources :messages

  resources :users
end
