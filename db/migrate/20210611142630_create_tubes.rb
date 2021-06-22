class CreateTubes < ActiveRecord::Migration[6.1]
  def change
    create_table :tubes do |t|
      t.integer :diameter_on_milimeters
      t.integer :capacity_on_liters
      t.date :expiration_date

      t.timestamps
    end
  end
end
