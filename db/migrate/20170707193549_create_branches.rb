class CreateBranches < ActiveRecord::Migration[5.1]
  def change
    create_table :branches do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
