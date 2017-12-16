class CreateOrderitems < ActiveRecord::Migration[5.1]
  def change
    create_table :orderitems do |t|
      t.integer :order_id
      t.integer :book_id
      t.integer :pen_id
      t.integer :pencil_id
      t.integer :pencil_case_id
      t.integer :quantity

      t.timestamps
    end
  end
end
