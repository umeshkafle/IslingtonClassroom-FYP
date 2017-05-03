class AddStudentSubjectIdToUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :student_subject_id, :integer
  end
end
