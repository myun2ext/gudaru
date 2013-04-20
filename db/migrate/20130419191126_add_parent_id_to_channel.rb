class AddParentIdToChannel < ActiveRecord::Migration
  def change
    add_column :channels, :parent_id, :integer
    add_index :channels, :parent_id
  end
end
