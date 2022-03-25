Rails.application.routes.draw do
  root to: "listings#index"
  resources :listings do 
    resources :orders, only: [:new, :create]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
