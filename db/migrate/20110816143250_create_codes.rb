class CreateCodes < ActiveRecord::Migration
  def self.up
    create_table :codes do |t|
      t.string  :number
      t.string  :text
      t.timestamps
    end
  end

  def self.down
    drop_table :codes
  end
end
