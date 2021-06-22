class CreateGncCharges < ActiveRecord::Migration[6.1]
  def change
    create_table :gnc_charges do |t|
      t.datetime :charge_moment
      t.string :weather
      t.integer :celsius_temperature
      t.integer :cost_on_argentinian_pesos
      t.references :car, null: false, foreign_key: true
      t.references :service_station, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
