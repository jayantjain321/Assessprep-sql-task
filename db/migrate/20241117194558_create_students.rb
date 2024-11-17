class CreateStudents < ActiveRecord::Migration[7.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth
      t.string :gender

      t.timestamps
    end
    add_index :students, :email, unique: true
  end
end
