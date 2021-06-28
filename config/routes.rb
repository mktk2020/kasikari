Rails.application.routes.draw do
  get 'hello/index'
  get 'hello/login_check'
  devise_for :accounts
  resources :lendingitems
  resources :jancodes
  resources :users
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
