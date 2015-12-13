Rails.application.routes.draw do
  # resources :piers
  # root 'piers#index'

  # root 'mcsubscribe#index'
  # post 'mcsubscribe/subscribe' => 'mcsubscribe#subscribe'

  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  root to: 'visitors#new'
end
