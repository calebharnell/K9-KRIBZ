class AddColumnsToListing < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :suburb, :string
    add_column :listings, :state, :string
  end
end
