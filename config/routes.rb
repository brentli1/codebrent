Rails.application.routes.draw do
  root 'pages#index'
  get '/contact', to: 'pages#contact'
end
