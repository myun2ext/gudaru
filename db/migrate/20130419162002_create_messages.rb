class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :body
      t.references :user
      t.references :channel

      t.timestamps
    end
    add_index :messages, :user_id
    add_index :messages, :channel_id
  end
end
