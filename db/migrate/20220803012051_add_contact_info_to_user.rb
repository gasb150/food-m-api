class AddContactInfoToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone, :integer
    add_column :users, :address, :string
  end
end
