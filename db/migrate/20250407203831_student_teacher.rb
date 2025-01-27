class StudentTeacher < ActiveRecord::Migration[8.0]
  def change
    create_table :students_teachers do |t|
      t.belongs_to :student
      t.belongs_to :teacher
    end
  end
end
