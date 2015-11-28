class CreateDyalises < ActiveRecord::Migration
  def change
    create_table :dyalises do |t|
      t.string :type_dyalisis
      t.text :description
      t.string :medical_unit

      t.timestamps null: false
    end
  end
end
