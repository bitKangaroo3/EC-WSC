class BasketProductsController < ApplicationController
	def create
		bp_c = BasketProduct.new(product_id: params[:product_id], basket_id: params[:basket_id])
		if bp_c.save
			redirect_to basket_path
		else
			redirect_to basket_path
		end
	end

	def destroy
		bp_d = BasketProduct.find_by(product_id: params[:id])
		bp_d.delete
		redirect_to root_path
	end

	private
		def basket_product_params
			params.require(:basket_product).permit(:basket_id, :product_id)
		end

end