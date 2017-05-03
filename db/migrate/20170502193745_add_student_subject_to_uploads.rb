class AddStudentSubjectToUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :student_subject, :integer
  end
end
