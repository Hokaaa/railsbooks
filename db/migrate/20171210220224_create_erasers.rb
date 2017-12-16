class CreateErasers < ActiveRecord::Migration[5.1]
  def change
    create_table :erasers do |t|
      t.integer :eraser_id
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
