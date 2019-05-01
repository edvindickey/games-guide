Rails.application.routes.draw do
  get 'guides/new'
  get 'guides/edit'
  get 'guides/show'
  get 'guides/index'
  devise_for :users
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
