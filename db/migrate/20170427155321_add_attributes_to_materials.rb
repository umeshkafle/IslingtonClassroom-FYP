class AddAttributesToMaterials < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :lecturer_id, :integer
    add_column :uploads, :subject_id, :integer

  end
end
