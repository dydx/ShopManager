Rails.application.routes.draw do
  resources :customer
  resources :repairs
  resources :work_orders
  resources :vehicles
end
