class CreateColleges < ActiveRecord::Migration[7.1]
  def change
    create_table :colleges, id: false do |t|
      t.string :id, primary_key: true
      t.string :name, null: false
      t.text :about, default: ""

      t.timestamps
    end
  end
end
