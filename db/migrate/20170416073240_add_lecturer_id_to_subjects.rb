class AddLecturerIdToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :lecturer_id, :integer
  end
end
