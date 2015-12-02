require 'rails_helper'

describe Product do

		context "when the product has comments" do
			before do
				@product = build(:product)
				@user1 = build(:user, email: "test@example.com")
				@user2 = build(:user, email: "test2@example.com")
				@comment1 = create(:comment, rating: 1, product: @product, body: "meh", user: @user1)
				@comment2 = create(:comment, rating: 3, product: @product, body: "so-so", user: @user1)
				@comment3 = create(:comment, rating: 5, product: @product, body: "yeah!", user: @user2)
			end
			it "returns the average rating of all comments" do 
				expect(@product.average_rating).to eq 3
			end
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