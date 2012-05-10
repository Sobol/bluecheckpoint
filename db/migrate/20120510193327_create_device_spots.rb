class CreateDeviceSpots < ActiveRecord::Migration
  def self.up
    create_table :device_spots do |t|
      t.string :address
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :device_spots
  end
end
