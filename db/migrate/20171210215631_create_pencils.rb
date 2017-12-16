class CreatePencils < ActiveRecord::Migration[5.1]
  def change
    create_table :pencils do |t|
      t.integer :pencil_id
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
