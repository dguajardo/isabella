class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :type_shift
      t.datetime :start_shift
      t.datetime :end_shift
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
