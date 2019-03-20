class PurchaseRecordsController < ApplicationController
	def show
		purchase_record = PurchaseRecord.find_by(user_id: current_user.id)
		purchase_record_products = PurchaseRecordProduct.where(purchase_record_id: purchase_record.id)
		@purchase_record_products = []
		purchase_record_products.each do |purchase_record_product|
			@purchase_record_products << purchase_record_product.product_id
		end
	end
end
