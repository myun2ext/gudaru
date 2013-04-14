Gudaru::Application.routes.draw do
  resources :channels

  resources :users

  root to: 'home#index'

  # twitter-login
  twitter = Gudaru::Application.config.twitter_login
  twitter_endpoint = twitter.login_handler(:return_to => '/')
  mount twitter_endpoint => 'sign_in', :as => :login
end
