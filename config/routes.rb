Rails.application.routes.draw do
  #get 'chatroom/index'
  root "pages#index"
  get "about", to: "pages#about"
  
  resources :articles do
    resources :comments
  end

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :messages, only: [:new, :create]
  get 'chatroom', to: 'chatroom#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
