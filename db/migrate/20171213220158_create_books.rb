class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :product_id
      t.string :title
      t.string :author
      t.string :subject
      t.string :level
      t.integer :ISBN
      t.string :category

      t.timestamps
    end
  end
end
