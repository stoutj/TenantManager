TenentManager::Application.routes.draw do

  resources :landlords, only: [:show, :new, :create]
  #match '/signup' => 'landlords#new'

begin
  resources :properties, only: [:new, :create, :show, :index] do
    resources :rental_apps, only: [:new, :create, :show, :index]
  end
end
end
