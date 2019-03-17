class BasketsController < ApplicationController
	def show
		basket = Basket.find_by(params[:id])
		basket_products = BasketProduct.where(basket_id: basket.id)
		@products = []
		basket_products.each do |basket_product|
			@products << basket_product.product_id
		end
	end
end
