class AddDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dob, :date
    add_column :users, :phone_no, :integer
    add_column :users, :address, :text
    add_column :users, :username, :string
  end
end
