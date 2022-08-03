class CreateFoodDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :food_dishes do |t|
      t.string :name
      t.integer :cost
      t.string :ingredients
      t.references :food_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
