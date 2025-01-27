Rails.application.routes.draw do
  resources :produtos
  resource :session
  resources :passwords, param: :token

  root 'produtos#index'
end
