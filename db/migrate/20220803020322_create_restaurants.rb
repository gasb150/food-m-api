class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :owner, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
