Rails.application.routes.draw do
  root to: 'home#index'

  post '/email', to: 'home#create_email'

  resources :posts
end
