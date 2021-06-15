class AddAgeDescriptionToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :age_description, :string
  end
end
