class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.references :food_dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
