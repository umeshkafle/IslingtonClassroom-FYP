class AddStudentIdToLecturerStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :lecturer_students, :student_id, :integer
  end
end
