class AddLecturerSubjectIdToUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :lecturer_subject_id, :integer
  end
end
