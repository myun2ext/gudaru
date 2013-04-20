class AddChannelIdIdIndexToMessage < ActiveRecord::Migration
  def up
    add_index :messages, [ :channel_id, :id ], unique: true
    #remove_index :messages, :id
  end

  def down
    remove_index :messages, [ :channel_id, :id ]
    #add_index :messages, :id, unique: true
  end
end
