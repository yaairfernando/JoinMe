Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  root 'home#index'
  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'
  
  
  get 'profile/:id', to: 'users#show', as: 'profile'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  get 'events/:id/invite', to: 'events#invite', as: 'invite_event'
  get 'events/:id/attend', to: 'events#attend', as: 'attend_event'
  get 'users/invitations', to: 'users#invited_events', as: 'invited_events'
  
  resources :events do
    resources :comments, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
