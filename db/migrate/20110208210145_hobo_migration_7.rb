class HoboMigration7 < ActiveRecord::Migration
  def self.up
    remove_column :stores, :organization
  end

  def self.down
    add_column :stores, :organization, :string
  end
end
