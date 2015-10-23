Rails.application.routes.draw do
  resources :posts, only: [] do
     resources :comments, only: [:create, :destroy]
   end

  resources :topics do
    resources :posts, except: [:index]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  root to: 'welcome#index'


end
