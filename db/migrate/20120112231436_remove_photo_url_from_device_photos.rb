class RemovePhotoUrlFromDevicePhotos < ActiveRecord::Migration
  def self.up
    remove_column :device_photos, :photo_url
  end

  def self.down
    add_column :device_photos, :photo_url, :string
  end
end
