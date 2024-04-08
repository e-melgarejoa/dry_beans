class AddDriverRefToDriveRoute < ActiveRecord::Migration[7.1]
  def change
    add_reference :drive_routes, :driver, null: false, foreign_key: true
  end
end
