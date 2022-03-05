class Associations < ActiveRecord::Migration[7.0]
  def change
    add_column :routes, :vehicle_id, :int
    add_column :routes, :station_id, :int
  end
end
