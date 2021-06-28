Rails.application.routes.draw do
  get 'lendingitems/kensaku'
  get 'lendingitems/kakunin/:id',to: "lendingitems#kakunin"
  resources :lendingitems do
    collection do 
      get 'search'
    end
  end
  get 'hello/index'
  get 'hello/login_check'

  devise_for :accounts
  
  resources :lendingitems
  resources :jancodes
  resources :users
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
