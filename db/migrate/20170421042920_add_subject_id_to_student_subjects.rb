class AddSubjectIdToStudentSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :student_subjects, :subject_id, :integer
  end
end
