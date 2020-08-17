Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :taggings, only: [:destroy]
  resources :authors
  
  resources :author_sessions, only: [:new, :create, :destroy]

  # These are aliases for new & destroy so user understands routes
  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

end
