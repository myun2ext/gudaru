class AddOwnerIdToChannel < ActiveRecord::Migration
  def change
    add_column :channels, :owner_id, :integer
    add_index :channels, :owner_id
  end
end
