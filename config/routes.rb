Rails.application.routes.draw do

  get 'pages/about'

  get 'pages/contact'

  get 'pages/resources'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  match 'about', :to => 'pages#about', :via => [:get, :post]
  match 'contact', :to => 'pages#contact', :via => [:get, :post]
  match 'resources', :to => 'pages#resources', :via => [:get, :post]
  
  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

  get 'home/index'
	resources :posts
	resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
end
