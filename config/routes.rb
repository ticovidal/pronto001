Rails.application.routes.draw do
  resources :dialogs
  resources :chats
  resources :indcategories
  resources :indcats
  resources :enterprises
  resources :adresses
  get 'control_users/index'
  resources :proposes
  resources :projects
  resources :subctegories
  get 'dashboard/industry'
  get 'dashboard/index'
  get 'dashboard/provider'
  resources :providers
  resources :industries
  resources :subcategories
  resources :categories
  resources :providerprofiles
  resources :industryprofiles
  resources :profiles
  get 'confirm-project' => 'projects#confirm'
  get 'confirm-propose' => 'proposes#confirm'
  get 'reject-propose' => 'proposes#reject'
   get 'approved-propose' => 'proposes#approved'
  devise_for :users
  root to: "home#index"
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
