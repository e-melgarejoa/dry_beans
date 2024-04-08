class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      t.string :classification
      t.string :brand
      t.integer :year
      t.string :color
      t.string :fuel

      t.timestamps
    end
  end
end
