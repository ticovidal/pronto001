Rails.application.routes.draw do
  get 'dashboard/industry'
  get 'dashboard/provider'
  resources :providers
  resources :industries
  resources :subcategories
  resources :categories
  resources :providerprofiles
  resources :industryprofiles
  resources :profiles
  devise_for :users
  root to: "home#index"
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
