class AddBrandToCodes < ActiveRecord::Migration
  def self.up
    add_column :codes, :car_brand,  :text #you can change the name, see wiki
  end

  def self.down
    remove_column :car_brand, :codes
  end
end
