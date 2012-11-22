Yabe::Application.routes.draw do

  namespace :admin do
    match '/login' => 'sessions#new', as: :login
    match '/logout' => 'sessions#destroy', as: :logout
    match '/dashboard' => 'admin#dashboard', as: :dashboard
    resources :permissions
    resources :sessions
    resources :users
  end

  resources :outfits
  resources :competitions

  root :to => 'static_pages#index'
end
