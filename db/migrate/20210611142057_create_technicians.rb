class CreateTechnicians < ActiveRecord::Migration[6.1]
  def change
    create_table :technicians do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.integer :document_number

      t.timestamps
    end
  end
end
