Yabe::Application.routes.draw do
  resources :competitions

  root :to => 'static_pages#index'
end
