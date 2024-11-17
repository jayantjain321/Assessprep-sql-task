class CreateSubmissions < ActiveRecord::Migration[7.2]
  def change
    create_table :submissions do |t|
      t.references :student, null: false, foreign_key: true
      t.references :assignment, null: false, foreign_key: true
      t.date :submission_date
      t.integer :marks_obtained

      t.timestamps
    end
    add_index :submissions, [:student_id, :assignment_id], unique: true
  end
end
