class AddColorToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :color, :string
  	# note about the parameters above
  	# the first one is the table name
  	# the second one is the field
  	# the third one is the data type
  end
end
