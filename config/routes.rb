Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'
  get 'accounts', to: 'accounts#index'
  get 'users', to: 'users#index'
end
