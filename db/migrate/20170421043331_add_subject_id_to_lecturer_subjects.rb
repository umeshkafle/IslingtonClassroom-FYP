class AddSubjectIdToLecturerSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :lecturer_subjects, :subject_id, :integer
  end
end
