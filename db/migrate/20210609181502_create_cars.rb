class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :license
      t.string :color
      t.references :version, null: false, foreign_key: true

      t.timestamps
    end
  end
end
