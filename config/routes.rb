Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  post "/users/:user_id/posts/:id", to: "posts#update"

  resources :posts, only: :index do
    resources :comments, only: [:new, :create, :edit]
    resources :votes, only: [:create]
  end
  resources :comments, only: :index do
    resources :votes, only: [:create]
  end
  resources :users, except: :destroy do
    resources :posts, only: [:new, :create, :edit, :destroy]
  end

end
