class StaticPagesController < ApplicationController
  def index
  end

  # make a new landing page for featured products
  def landing_page
		@featured_product = Product.first
	end
end
