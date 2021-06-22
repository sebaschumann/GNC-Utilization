class CreateKitVerifications < ActiveRecord::Migration[6.1]
  def change
    create_table :kit_verifications do |t|
      t.date :year
      t.boolean :enabled
      t.references :tube_kit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
