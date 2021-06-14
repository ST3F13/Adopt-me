class AddYearsToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :years, :integer, :default => 0
  end
end
