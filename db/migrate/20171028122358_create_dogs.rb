class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :age
      t.string :breed

      t.timestamps
    end
  end
end
