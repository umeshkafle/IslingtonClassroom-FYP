class AddAssignmentIdToSubject < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :assignment_id, :integer
  end
end
