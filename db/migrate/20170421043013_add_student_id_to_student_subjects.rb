class AddStudentIdToStudentSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :student_subjects, :student_id, :integer
  end
end
