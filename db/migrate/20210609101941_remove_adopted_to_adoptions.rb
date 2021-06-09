class RemoveAdoptedToAdoptions < ActiveRecord::Migration[6.0]
  def change
    remove_column :adoptions, :adopted
  end
end
