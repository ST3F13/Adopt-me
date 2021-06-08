class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :type
      t.string :name
      t.integer :age
      t.text :description
      t.string :race
      t.string :size
      t.string :hair
      t.string :personality
      t.string :gender
      t.boolean :child_compatibility
      t.boolean :garden_need
      t.boolean :sterilized
      t.boolean :puced
      t.boolean :tattooed
      t.boolean :vaccination
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
