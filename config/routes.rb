Bills::Application.routes.draw do
  devise_for :users
  resources :payment_methods, :path => '/payment-methods'
  get "home/index"
  root 'home#index'
  resources :payments
  resources :companies
end
