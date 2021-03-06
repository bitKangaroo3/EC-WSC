class ProductsController < ApplicationController
	def new
		@product = Product.new
	end
	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to root_path
		else
			render :new
		end
	end
	def show
		@product = Product.find(params[:id])
		@basket = Basket.find(current_user.id)
	end


	private
		def product_params
			params.require(:product).permit(:name, :description, :price, :unit, :photo)
		end
end
