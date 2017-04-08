class CreateLecturerSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :lecturer_subjects do |t|

      t.timestamps
    end
  end
end
