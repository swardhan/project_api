class DropUsers < ActiveRecord::Migration[5.1]
  def down
    drop_table :user
  end
end
