Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  root 'pages#index'
  resources :guides
  resources :categories
  resources :comments
  resources :articles
end
