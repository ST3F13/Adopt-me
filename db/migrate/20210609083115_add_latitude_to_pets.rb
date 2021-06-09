class AddLatitudeToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :latitude, :float
  end
end
