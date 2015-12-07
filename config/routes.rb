Rails.application.routes.draw do
  # resources :piers
  # root 'piers#index'
  root 'mcsubscribe#index'
  post 'mcsubscribe/subscribe' => 'mcsubscribe#subscribe'
end
