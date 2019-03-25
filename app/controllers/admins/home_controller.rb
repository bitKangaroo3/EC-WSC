class Admins::HomeController < Admins::Base
	def index
		@products = Product.all
  end
end
