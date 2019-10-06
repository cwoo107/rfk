Rails.application.routes.draw do
  resources :profiles
  get 'landing/index'
  devise_for :users
  root to: 'landing#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
