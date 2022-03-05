class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.integer :longitude
      t.integer :latitude

      t.timestamps
    end
  end
end
