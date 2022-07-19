Rails.application.routes.draw do
  resources :users
  resources :clients
  resources :dishes

  scope module: :api, path: 'api' do
    resources :clients
    resources :dishes
    resources :order_details
    resources :users
  end
end

