class AddParentIdToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :parent_id, :integer
    add_index :messages, :parent_id
  end
end
