class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :name
      t.integer :stock
      t.string :type_supply

      t.timestamps null: false
    end
  end
end
