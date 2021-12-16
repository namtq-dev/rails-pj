Rails.application.routes.draw do
  resources :product_reviews
  resources :categories
  get 'menu', to: 'menu#index'
  resources :products
  resources :blogs
  get 'users/show'
  root 'static_pages#home'
  devise_for :users
  resources :sports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
