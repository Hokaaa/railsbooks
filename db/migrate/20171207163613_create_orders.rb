class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :shippingfee
      t.decimal :total
      t.string :methodofpayment

      t.timestamps
    end
  end
end
