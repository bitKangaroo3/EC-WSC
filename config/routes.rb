Rails.application.routes.draw do
	namespace :admins do
		get 'products/new'
		root 'home#index'
  end
	resources :charges
	resources :purchase_record_products
	get "create", to: "purchase_record_products#create", as: :create_purchase_record_products
	resource :purchase_record
	resources :basket_products
	resource :basket
  resources :products
  devise_for :users
  root 'home#index'
end
