Rails.application.routes.draw do
  resources :piers

  root 'piers#index'
end
