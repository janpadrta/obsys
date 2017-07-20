class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name, null: false
      t.string :street
      t.string :street_number
      t.string :city
      t.string :postal_code
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
