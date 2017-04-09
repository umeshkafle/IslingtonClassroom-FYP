class AddCourseIdToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :course_id, :integer
  end
end
