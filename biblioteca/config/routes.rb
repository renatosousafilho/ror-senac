Rails.application.routes.draw do
  get "authors" => 'authors#index'
  post 'authors' => 'authors#create'
  get 'author/new' => 'authors#new', as: :new_author
  get "author/:id" => 'authors#show', as: :author

  get 'books' => 'books#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
