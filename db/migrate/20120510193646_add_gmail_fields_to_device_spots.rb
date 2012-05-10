class AddGmailFieldsToDeviceSpots < ActiveRecord::Migration
  def self.up
    add_column :device_spots, :latitude,  :float #you can change the name, see wiki
    add_column :device_spots, :longitude, :float #you can change the name, see wiki
    add_column :device_spots, :gmaps, :boolean #not mandatory, see wiki
  end

  def self.down
    remove_column :device_spots, :latitude
    remove_column :device_spots, :longitude
    remove_column :device_spots, :gmaps
  end
end
