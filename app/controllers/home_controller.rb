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
		end

		@products = Product.all
	end

end
