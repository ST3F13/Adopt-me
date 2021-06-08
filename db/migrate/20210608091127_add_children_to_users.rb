class AddChildrenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :children, :boolean
  end
end
