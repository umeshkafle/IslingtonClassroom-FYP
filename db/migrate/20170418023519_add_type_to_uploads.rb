class AddTypeToUploads < ActiveRecord::Migration[5.0]
  def change
    add_column :uploads, :type, :string
  end
end
