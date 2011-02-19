class HoboMigration19 < ActiveRecord::Migration
  def self.up
    rename_column :repairs, :name, :device
  end

  def self.down
    rename_column :repairs, :device, :name
  end
end
