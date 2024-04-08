class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :transaction_type
      t.string :receiver
      t.string :seller
      t.string :status
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
