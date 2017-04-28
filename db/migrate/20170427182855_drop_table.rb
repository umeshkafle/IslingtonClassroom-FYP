class DropTable < ActiveRecord::Migration[5.0]
  def change
  	drop_table :assignments
  	drop_table :announcements
  	drop_table :materials
  end
end
