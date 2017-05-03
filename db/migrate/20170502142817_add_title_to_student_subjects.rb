class AddTitleToStudentSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :student_subjects, :title, :string
  end
end
