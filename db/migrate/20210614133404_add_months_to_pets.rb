class AddMonthsToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :months, :integer, :default => 0
  end
end
