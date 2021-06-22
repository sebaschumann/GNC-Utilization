class CreateTubeKits < ActiveRecord::Migration[6.1]
  def change
    create_table :tube_kits do |t|
      t.integer :kit_number
      t.references :tube, null: false, foreign_key: true

      t.timestamps
    end
  end
end
