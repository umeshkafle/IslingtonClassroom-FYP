class AddLecturerIdToLecturerSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :lecturer_subjects, :lecturer_id, :integer
  end
end
