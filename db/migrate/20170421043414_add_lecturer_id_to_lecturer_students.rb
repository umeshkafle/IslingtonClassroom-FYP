class AddLecturerIdToLecturerStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :lecturer_students, :lecturer_id, :integer
  end
end
