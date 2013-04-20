Gudaru::Application.routes.draw do
  resource :guidance

  resources :channels do
    resources :messages
  end

  resources :users

  root to: 'home#index'

  # twitter-login
  twitter = Gudaru::Application.config.twitter_login
  twitter_endpoint = twitter.login_handler(:return_to => '/logged_in')
  mount twitter_endpoint => 'sign_in', :as => :login
  #mount twitter_endpoint => 'logout', :as => :twitter_logout
  match "/logged_in" => 'home#logged_in'
  match "/logout" => "home#logout"
  match "/twitter_profile_image/:screen_name" => "home#twitter_profile_image"

  #match '*other' => 'channels#by_short_name'
end
