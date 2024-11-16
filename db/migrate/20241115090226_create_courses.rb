class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :academic_year, null: false
      t.string :awarding_body, null: false
      t.string :length, null: false
      t.string :award_title, null: false
      t.text :competencies, null: false
      t.text :outcomes, null: false
      t.text :contents, null: false
      t.text :teaching_mode, null: false
      t.text :assessment_strategy, null: false
      t.integer :tutor_id, null: false

      t.timestamps
    end

    add_index :courses, :title,                unique: true
  end
end
