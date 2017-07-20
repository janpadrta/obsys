class AddVariableSymbolToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :variable_symbol, :integer
  end
end
