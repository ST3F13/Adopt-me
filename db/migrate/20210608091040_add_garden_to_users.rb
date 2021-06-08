class AddGardenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :garden, :boolean
  end
end
