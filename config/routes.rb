Rails.application.routes.draw do

  get 'categories/index'
  get 'categories/show'
  devise_for :users
  root 'pages#index'
  resources :guides
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
