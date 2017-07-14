class AddStudentIdToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :student_id, :integer
  end
end
