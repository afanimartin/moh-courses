class CreateEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :enrollments, id: false do |t|
      t.string :id, primary_key: true
      t.integer :course_id, null: false

      t.timestamps
    end
  end
end
