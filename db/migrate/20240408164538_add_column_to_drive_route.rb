class AddColumnToDriveRoute < ActiveRecord::Migration[7.1]
  def change
    add_column :drive_routes, :name, :string
  end
end
