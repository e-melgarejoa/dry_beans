class AddColumnToVehicle < ActiveRecord::Migration[7.1]
  def change
    add_column :vehicles, :identification_plate, :string
  end
end
