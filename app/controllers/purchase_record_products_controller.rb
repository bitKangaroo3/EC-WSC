class PurchaseRecordProductsController < ApplicationController
	def create
		basket_products = BasketProduct.where(basket_id: params[:basket_id])
		@products = []

		basket_products.each do |basket_product|
			@products << basket_product.product_id
		end

		@products.each do |product|
			prp = PurchaseRecordProduct.new(purchase_record_id: params[:purchase_record_id], product_id: product)
			bp = BasketProduct.find_by(basket_id: params[:basket_id], product_id: product)

			PurchaseRecordProduct.transaction do
				prp.save!
				bp.delete
			end
		end

		redirect_to root_path
	end
end
