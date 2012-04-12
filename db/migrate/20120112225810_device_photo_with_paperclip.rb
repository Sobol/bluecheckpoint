class DevicePhotoWithPaperclip < ActiveRecord::Migration
  def self.up
    change_table :device_photos do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :device_photos, :photo
  end
end
