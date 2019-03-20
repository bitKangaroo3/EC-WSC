class BasketsController < ApplicationController
	def show
		basket = Basket.find_by(user_id: current_user.id)
		basket_products = BasketProduct.where(basket_id: basket.id)

		@basket = Basket.find(current_user.id)
		@purchase_record = PurchaseRecord.find(current_user.id)
		@products = []

		basket_products.each do |basket_product|
			@products << basket_product.product_id
		end
	end
end
