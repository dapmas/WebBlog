Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get 'home/index'
	resources :posts
	resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
end
