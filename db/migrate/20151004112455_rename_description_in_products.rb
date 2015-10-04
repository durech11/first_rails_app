class RenameDescriptionInProducts < ActiveRecord::Migration
  def change
  	rename_column :products, :description, :details
  end
end
