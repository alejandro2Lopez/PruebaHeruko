Rails.application.routes.draw do
  resources :clients
  resources :dishes
  scope module: :api, path: 'api' do
    resources :clients
  end
end
