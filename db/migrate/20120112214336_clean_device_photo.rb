class CleanDevicePhoto < ActiveRecord::Migration
  def self.up
    remove_column :device_photos, :photo_file_name
    remove_column :device_photos, :photo_content_type
    remove_column :device_photos, :photo_file_size
    
    add_column :device_photos, :photo_url, :string
  end

  def self.down
    add_column :device_photos, :photo_file_name, :string
    add_column :device_photos, :photo_content_type, :string
    add_column :device_photos, :photo_file_size, :integer
    
    remove_column :device_photos, :photo_url
  end
end
