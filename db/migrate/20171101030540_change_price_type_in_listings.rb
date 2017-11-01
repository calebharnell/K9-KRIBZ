class ChangePriceTypeInListings < ActiveRecord::Migration[5.1]
  def change
      change_column :listings, :price, 'integer USING CAST(price AS integer)'
  end
end
