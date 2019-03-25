class Admins::ProductsController < Admins::Base
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
end
