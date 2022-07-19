Rails.application.routes.draw do
  
  resources :clients
  resources :dishes
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  scope module: :api, path: 'api' do
    resources :clients
    resources :dishes
    resources :order_details
  end
end
