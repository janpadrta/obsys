class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.integer :client_id
      t.integer :order_id
      t.decimal :amount
      t.date :pay_date

      t.timestamps
    end
  end
end
