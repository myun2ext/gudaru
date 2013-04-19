class AddShortNameToChannel < ActiveRecord::Migration
  def change
    add_column :channels, :short_name, :string
  end
end
