class CreateDriveRoutes < ActiveRecord::Migration[7.1]
  def change
    create_table :drive_routes do |t|
      t.date :start_date
      t.date :limit_date
      t.string :status_route
      t.string :company

      t.timestamps
    end
  end
end
