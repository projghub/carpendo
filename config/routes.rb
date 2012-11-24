Yabe::Application.routes.draw do

  namespace :admin do
    match '/login' => 'sessions#new', as: :login
    match '/logout' => 'sessions#destroy', as: :logout
    match '/dashboard' => 'admin#dashboard', as: :dashboard
    resources :categories
    resources :competitions
    resources :permissions
    resources :sessions
    resources :users
    resources :vendors
  end

  resources :outfits
  resources :competitions
  resources :vendors

  root :to => 'static_pages#index'
end
