class AddAdoptedToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :adopted, :boolean, :default => false
  end
end
