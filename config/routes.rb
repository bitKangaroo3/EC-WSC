Rails.application.routes.draw do
	resources :basket_products
	resource :basket
  resources :products
  devise_for :users
  root 'home#index'
end
