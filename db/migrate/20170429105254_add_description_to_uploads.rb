class AddDescriptionToUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :description, :text
  end
end
