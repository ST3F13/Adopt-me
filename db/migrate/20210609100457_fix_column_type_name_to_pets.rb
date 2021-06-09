class FixColumnTypeNameToPets < ActiveRecord::Migration[6.0]
  def change
    rename_column :pets, :type, :category
  end
end
