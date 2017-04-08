class AddCollegeNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :college_name, :string
  end
end
