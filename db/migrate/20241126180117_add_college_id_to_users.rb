class AddCollegeIdToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :college_id, :string
    add_foreign_key :users, :colleges, column: :college_id, primary_key: :id
  end
end
