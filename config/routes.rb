Rails.application.routes.draw do
	resources :purchase_record_products
	resource :purchase_record
	resources :basket_products
	resource :basket
  resources :products
  devise_for :users
  root 'home#index'
end
