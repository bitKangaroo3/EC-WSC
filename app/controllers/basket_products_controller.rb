class BasketProductsController < ApplicationController


	def destroy
		bp = BasketProduct.find_by(product_id: params[:id])
		bp.delete
		redirect_to root_path
	end

end