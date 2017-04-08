class AddCategoryToUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :category, :integer
  end
end
