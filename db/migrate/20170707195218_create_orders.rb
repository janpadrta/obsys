class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :branch_id, null: false
      t.date :delivery_date
      t.integer :state, null: false, default: 1

      t.timestamps
    end
  end
end
