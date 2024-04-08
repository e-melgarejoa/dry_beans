class CreateDrivers < ActiveRecord::Migration[7.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :contractor_company

      t.timestamps
    end
  end
end
