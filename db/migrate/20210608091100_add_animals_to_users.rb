class AddAnimalsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :animals, :boolean
  end
end
