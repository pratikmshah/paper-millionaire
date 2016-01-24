Rails.application.routes.draw do
  resources :stocks, only: [:index, :create]

  root to: 'stocks#index'
end
