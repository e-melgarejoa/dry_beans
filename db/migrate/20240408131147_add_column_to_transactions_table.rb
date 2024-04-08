class AddColumnToTransactionsTable < ActiveRecord::Migration[7.1]
  def change
    add_column :transactions, :observation, :string
  end
end
