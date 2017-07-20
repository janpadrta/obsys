class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :product_id, null: false
      t.integer :order_id, null: false
      t.integer :client_id, null: false
      t.integer :pieces, null: false, default: 1

      t.timestamps
    end
  end
end
