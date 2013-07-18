TenentManager::Application.routes.draw do

begin
  resources :properties, only: [:new, :create, :show] do
    resources :rental_apps, only: [:new, :create, :show]
  end
end
end
