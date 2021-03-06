class HomeController < ApplicationController
	def index
		if !user_signed_in?
			redirect_to new_user_session_path
		end
		if user_signed_in?
			@basket = Basket.find_by(user_id: current_user.id)
			if @basket == nil
				b = Basket.new(user_id: current_user.id)
				b.save
			end
			@purchase_record = PurchaseRecord.find_by(user_id: current_user.id)
			if @purchase_record == nil
				b = PurchaseRecord.new(user_id: current_user.id)
				b.save
			end
			if current_user.admin?
				redirect_to admins_root_path
			end
		end
		@products = Product.all
	end

end
