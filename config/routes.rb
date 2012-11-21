Yabe::Application.routes.draw do

  resources :outfits
  resources :competitions

  root :to => 'static_pages#index'
end
