Rails.application.routes.draw do
  namespace :site do
    get 'hem', to: 'home/index'
  end

  get 'backoffice', to: 'backoffice/dashboard#index'
  get 'admin', to: 'backoffice/dashboard#index'

  namespace :backoffice do
    get 'dashboard', to: 'dashboard#index'
  end
  devise_for :admins
  devise_for :members
  
  root 'site/home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
