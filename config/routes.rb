Rails.application.routes.draw do
  resources :products

  get 'search', to: 'search#index', as: :search

  root to: "products#index"
end
