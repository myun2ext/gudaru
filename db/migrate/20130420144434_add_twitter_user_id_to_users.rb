class AddTwitterUserIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitter_user_id, :integer
  end
end
