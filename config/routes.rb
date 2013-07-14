TenentManager::Application.routes.draw do

  resources :rental_apps, only: [:show, :new, :create]
  resources :properties, only: [:show, :new, :create]


=begin
  resources :properties, only: [:new, :create, :show] do
    resources :rental_apps, only: [:new, :create, :show]
  end
=end
end
