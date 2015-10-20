class StaticPagesController < ApplicationController
  def index
  end

# make a new landing page for featured products
def landing_page
	@products = Product.all
end

# email controller - development
def thank_you
	@name = params[:name]
	@email = params[:email]
	@message = params[:message]
	ActionMailer::Base.mail(:from => @email,
		:to => 'crimsonx84@yahoo.com',
		:subject => "A new contact form message from #{@name}",
		:body => @message).deliver
end

end
