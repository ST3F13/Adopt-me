class AddHabitationTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :habitation_type, :string
  end
end
