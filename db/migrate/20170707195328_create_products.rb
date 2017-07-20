class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :branch_id, null: false
      t.string :size
      t.decimal :price, null: false, default: 0.0
      t.boolean :active, default: true
      t.string :description

      t.timestamps
    end
  end
end
