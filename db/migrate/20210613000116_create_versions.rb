class CreateVersions < ActiveRecord::Migration[6.1]
  def change
    create_table :versions do |t|
      t.string :version
      t.references :model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
