class CreateTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :trips do |t|
      t.string :origin
      t.string :destiny
      t.date :strat_date
      t.date :end_date
      t.integer :stops
      t.string :status
      t.references :drive_route, null: false, foreign_key: true

      t.timestamps
    end
  end
end
