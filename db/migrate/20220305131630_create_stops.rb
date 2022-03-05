class CreateStops < ActiveRecord::Migration[7.0]
  def change
    create_table :stops do |t|
      t.integer :time

      t.timestamps
    end
  end
end
