class AddReferencesToComplaints < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.references :complaints
    end
  end
end
