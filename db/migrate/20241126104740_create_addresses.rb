class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses, id: false do |t|
      t.string :id, primary_key: true
      t.string :name

      t.timestamps
    end
  end
end
