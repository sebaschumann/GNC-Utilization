class CreateExamTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :exam_types do |t|
      t.string :name
      t.integer :cost_on_argentinian_pesos

      t.timestamps
    end
  end
end
