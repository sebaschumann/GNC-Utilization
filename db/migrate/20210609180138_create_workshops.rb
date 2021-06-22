class CreateWorkshops < ActiveRecord::Migration[6.1]
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :address
      t.references :locality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
