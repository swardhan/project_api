class AddComplaintReferences < ActiveRecord::Migration[5.1]
  def change
    change_table :complaints do |t|
      t.references :user
    end
  end
end
