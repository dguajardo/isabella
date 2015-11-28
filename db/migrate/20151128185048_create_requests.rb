class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.timestamp :date
      t.text :description
      t.references :machine, index: true, foreign_key: true
      t.references :supply, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
