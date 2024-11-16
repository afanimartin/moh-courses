class CreateEnrollments < ActiveRecord::Migration[7.1]
  def change
    create_table :enrollments do |t|
      t.integer :course_id, null: false

      t.timestamps
    end
  end
end
