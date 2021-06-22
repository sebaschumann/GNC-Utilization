class CreateTubeVerifications < ActiveRecord::Migration[6.1]
  def change
    create_table :tube_verifications do |t|
      t.date :date
      t.boolean :enabled
      t.references :exam_type, null: false, foreign_key: true
      t.references :tube, null: false, foreign_key: true
      t.references :technician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
