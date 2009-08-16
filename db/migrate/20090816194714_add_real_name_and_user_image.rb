class AddRealNameAndUserImage < ActiveRecord::Migration
  def self.up
    add_column :users, :real_name, :string
    add_column :users, :image_name, :string
  end

  def self.down
    remove_column :users, :image_name
    remove_column :users, :real_name
  end
end
