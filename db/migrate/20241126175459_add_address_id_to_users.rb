class AddAddressIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address_id, :string
    add_foreign_key :users, :addresses, column: :address_id, primary_key: :id
  end
end
