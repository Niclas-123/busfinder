class StopsAssociations < ActiveRecord::Migration[7.0]
  def change
    add_column :stops, :day_id, :int
    add_column :stops, :route_id, :int
    add_column :stops, :station_id, :int
  end
end
