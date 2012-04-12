class ChangeTextFieldInNews < ActiveRecord::Migration
  def self.up
    change_column :news, :content, :text
  end

  def self.down
    change_column :news, :content, :string
  end
end
