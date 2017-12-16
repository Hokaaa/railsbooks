class CreatePencilCases < ActiveRecord::Migration[5.1]
  def change
    create_table :pencil_cases do |t|
      t.integer :pencil_case_id
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
