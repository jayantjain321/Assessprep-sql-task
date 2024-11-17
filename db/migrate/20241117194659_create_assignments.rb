class CreateAssignments < ActiveRecord::Migration[7.2]
  def change
    create_table :assignments do |t|
      t.string :title
      t.date :due_date
      t.integer :total_marks

      t.timestamps
    end
  end
end
