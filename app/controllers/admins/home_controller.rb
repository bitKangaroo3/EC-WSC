class Admins::HomeController < Admins::Base
	def index
		@products = Product.all

		@product_ids_monthly = []
		@sold_monthly = PurchaseRecordProduct.sold_in_this_month_admin(current_user.id)
		@sold_monthly.each do | s |
			s = s.product_id
			@product_ids_monthly << s
		end

		@sales_monthly = 0
		@product_ids_monthly.each do | pi |
			pi = Product.find(pi)
			if pi.unit == "doller"
				pi = pi.price.to_i
				#円換算自動取得考える
				pi = pi * 130
			else
				pi = pi.price.to_i
			end
			@sales_monthly += pi
		end

		@product_ids_all = []
		@sold_all = PurchaseRecordProduct.sold_whole_piriod_admin(current_user.id)
		@sold_all.each do | s |
			s = s.product_id
			@product_ids_all << s
		end

		@sales_all = 0
		@product_ids_all.each do | pi |
			pi = Product.find(pi)
			if pi.unit == "doller"
				pi = pi.price.to_i
				#円換算自動取得考える
				pi = pi * 130
			else
				pi = pi.price.to_i
			end
			@sales_all += pi
		end
  end
end
