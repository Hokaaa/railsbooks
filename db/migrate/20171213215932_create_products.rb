class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :description
      t.decimal :price
      t.string :image_url
      t.string :category

      t.timestamps
    end
  end
end
