Rails.application.routes.draw do
  root 'pages#index'
  get '/contact', to: 'messages#new', as: :contact
  get '/about', to: 'pages#about', as: :about

  resources :categories
  resources :projects
  resources :messages, only: [:create]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :logout
end
