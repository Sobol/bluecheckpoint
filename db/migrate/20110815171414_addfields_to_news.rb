class AddfieldsToNews < ActiveRecord::Migration
  def self.up
    add_column :news, :title, :string
    add_column :news, :content, :string
  end

  def self.down
    remove_column :news, :title
    remove_column :news, :content
  end
end
