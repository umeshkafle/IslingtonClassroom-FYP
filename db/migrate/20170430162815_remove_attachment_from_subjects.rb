class RemoveAttachmentFromSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :attachment, :string
  end
end
