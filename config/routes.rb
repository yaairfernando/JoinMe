Rails.application.routes.draw do
  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'

  get 'user_profile/:id', to: 'sessions#show'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
