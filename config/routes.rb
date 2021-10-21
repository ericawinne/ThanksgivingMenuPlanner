Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :ingredients
  resources :shopping_list_items
  resources :recipes

  resources :users, only: [:show] do
    resources :ingredients, only: [:index]
  end

  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
