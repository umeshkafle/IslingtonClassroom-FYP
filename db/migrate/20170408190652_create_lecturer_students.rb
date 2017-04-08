class CreateLecturerStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :lecturer_students do |t|

      t.timestamps
    end
  end
end
