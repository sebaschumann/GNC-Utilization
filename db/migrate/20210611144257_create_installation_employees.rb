class CreateInstallationEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :installation_employees do |t|
      t.references :kit_installation, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
