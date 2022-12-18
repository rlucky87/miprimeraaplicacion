class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :nom
      t.string :adresse
      t.integer :rating

      t.timestamps
    end
  end
end
