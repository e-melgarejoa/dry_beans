class AddColumnToTransaction < ActiveRecord::Migration[7.1]
  def change
    add_column :transactions, :transaction_date, :datetime
  end
end
