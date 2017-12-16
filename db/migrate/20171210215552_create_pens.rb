class CreatePens < ActiveRecord::Migration[5.1]
  def change
    create_table :pens do |t|
      t.integer :pen_id
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
