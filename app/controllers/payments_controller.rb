class PaymentsController < ApplicationController
	
	def create
		@product = Product.find(params[:product_id])
		@user = current_user
		token = params[:stripeToken]
		# Create the charge on Stripe's Servers - this will charge the user's card
		begin
			charge = Stripe::Charge.create(
				:amount => (@product.price.to_d * 100).to_i, # amount in cents
				:currency => "usd",
				:source => token,
				:description => params[:stripeEmail]
			)
		rescue Stripe::CardError => e
			# The card has been declined
		end

		redirect_to product_path(@product)
	end

end
