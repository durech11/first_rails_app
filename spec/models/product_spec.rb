require 'rails_helper'

	describe Product do

		context "when the product has comments" do
			before do
				@product = Product.create(:name => "race bike")
				@user = User.create(:email => "test@example.com", :password => "genericpassword")
				@product.comments.create(:rating => 1, :user => @user, :body => "Meh!")
				@product.comments.create(:rating => 3, :user => @user, :body => "So-so...")
				@product.comments.create(:rating => 5, :user => @user, :body => "Oh yeah!")
			end
			it "returns the average rating of all comments" do 
				expect(@product.average_rating).to eq 3
			end
		
		context "product has no name, just description" do
			before do
				@product = Product.create(:details => "This is a regular bike")
			end	
			it "is not valid" do
				expect(@product).not_to be_valid
			end
		end

	end

end