Rails.application.routes.draw do
  root 'pages#index'
  get '/contact', to: 'pages#contact', as: :contact

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
