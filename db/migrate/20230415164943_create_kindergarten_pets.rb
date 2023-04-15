class CreateKindergartenPets < ActiveRecord::Migration[7.0]
  def change
    create_table :kindergarten_pets do |t|
      t.references :kindergarten, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.boolean :compatible

      t.timestamps
    end
  end
end
