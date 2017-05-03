class AddSubjectCodeToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :subject_code, :string
  end
end
