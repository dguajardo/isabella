class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :type_shift
      t.string :timestamp
      t.string :end_time
      t.string :timestamp
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
