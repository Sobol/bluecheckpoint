class ChangeCodeDescriptionTYpe < ActiveRecord::Migration
  def self.up
    change_column :codes, :text, :text
  end

  def self.down
    change_column :codes, :text, :string
  end
end
