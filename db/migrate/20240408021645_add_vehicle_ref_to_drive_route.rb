class AddVehicleRefToDriveRoute < ActiveRecord::Migration[7.1]
  def change
    add_reference :drive_routes, :vehicle, null: false, foreign_key: true
  end
end
