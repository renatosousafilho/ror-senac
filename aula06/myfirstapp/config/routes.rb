Rails.application.routes.draw do
  resources :posts
  get 'home/index'
  get 'home/about'

  root to: "home#index"

end
