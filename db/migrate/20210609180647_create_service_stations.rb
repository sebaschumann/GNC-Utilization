class CreateServiceStations < ActiveRecord::Migration[6.1]
  def change
    create_table :service_stations do |t|
      t.string :name
      t.string :adress
      t.string :fuel_types
      t.string :flag
      t.integer :dispensers_quantity
      t.references :locality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
