class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :book_id
      t.string :subject
      t.string :level
      t.string :title
      t.string :author
      t.integer :ISBN
      t.decimal :price

      t.timestamps
    end
  end
end
