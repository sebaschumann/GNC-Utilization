class CreateKitInstallations < ActiveRecord::Migration[6.1]
  def change
    create_table :kit_installations do |t|
      t.datetime :date
      t.integer :cost_on_argentinian_pesos
      t.references :tube_kit, null: false, foreign_key: true
      t.references :workshop, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
