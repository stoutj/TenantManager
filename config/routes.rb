TenentManager::Application.routes.draw do

  resources :rental_apps, only: [:show, :new, :create]
end
