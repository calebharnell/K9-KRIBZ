class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.references :user, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :price
      t.text :details

      t.timestamps
    end
  end
end
