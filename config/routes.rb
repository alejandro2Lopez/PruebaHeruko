Rails.application.routes.draw do
  # resources :clients
  resources :dishes

  scope module: :api do
    resources :clients
  end
end
