class AddSubmissionEndDateToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :submission_end_date, :datetime
  end
end
