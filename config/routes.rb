Rails.application.routes.draw do
  root 'pages#index'

  resources :customers do
    resources :vehicles, only: [:new]
  end

  resources :repairs
  resources :work_orders
  resources :vehicles
  devise_for :users
end
