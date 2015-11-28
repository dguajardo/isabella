class CreateDyalises < ActiveRecord::Migration
  def change
    create_table :dyalises do |t|
      t.string :type_dyalisis
      t.text :description
      t.string :medical_unit
      t.references :user, index: true, foreign_key: true
      t.references :machine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
