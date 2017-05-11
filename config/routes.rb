Rails.application.routes.draw do
  root to: 'admin_root'
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :users
end
