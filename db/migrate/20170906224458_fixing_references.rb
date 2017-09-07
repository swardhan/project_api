class FixingReferences < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :complaints_id
  end
end
