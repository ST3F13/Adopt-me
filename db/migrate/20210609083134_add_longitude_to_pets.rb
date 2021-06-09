class AddLongitudeToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :longitude, :float
  end
end
