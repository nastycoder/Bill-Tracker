Bills::Application.routes.draw do
  resources :payment_methods, :path => '/payment-methods'
  get "home/index"
  root 'home#index'
  resources :payments
  resources :companies
end
