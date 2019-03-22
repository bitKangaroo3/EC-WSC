class PurchaseRecordProductsController < ApplicationController
	def create
		@basket = Basket.find(current_user.id)
		@purchase_record = PurchaseRecord.find(current_user.id)
		basket_products = BasketProduct.where(basket_id: @basket.id)
		@products = []

		basket_products.each do |basket_product|
			@products << basket_product.product_id
		end

		@products.each do |product|
			prp = PurchaseRecordProduct.new(purchase_record_id: @purchase_record.id, product_id: product)
			bp = BasketProduct.find_by(basket_id: @basket.id, product_id: product)

			PurchaseRecordProduct.transaction do
				prp.save!
				bp.delete
			end
		end

		redirect_to new_charge_path
	end

end
