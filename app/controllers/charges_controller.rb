class ChargesController < ApplicationController
	def new
	end

	def create
		# Amount in cents
		@purchase_record_id = params[:purchase_record_id].to_i
		@basket_id = params[:basket_id].to_i
		@amount = params[:amount]

		customer = Stripe::Customer.create({
			email: params[:stripeEmail],
			source: params[:stripeToken],
		})

		charge = Stripe::Charge.create({
			customer: customer.id,
			amount: @amount,
			description: 'Rails Stripe Test customer',
			currency: 'jpy',
		})

		redirect_to create_purchase_record_products_path

	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_back
	end

end
