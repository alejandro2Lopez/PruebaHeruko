Rails.application.routes.draw do
  resources :users
  resources :dishes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  scope module: :api, path: 'api' do
    resources :users
  end
  # Defines the root path route ("/")
  # root "articles#index"
end

