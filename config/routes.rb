Rails.application.routes.draw do
  resources :stocks, only: [:index, :create, :destroy]

  root to: 'stocks#index'
end
