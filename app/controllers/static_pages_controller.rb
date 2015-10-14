class StaticPagesController < ApplicationController
  def index
  end

  # make a new landing page for featured products
def landing_page
  @products = Product.limit(3)
end

end
