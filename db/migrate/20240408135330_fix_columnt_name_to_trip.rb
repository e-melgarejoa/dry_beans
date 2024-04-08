class FixColumntNameToTrip < ActiveRecord::Migration[7.1]
  def change
    rename_column :trips, :strat_date, :start_date
  end
end
