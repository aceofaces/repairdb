class HoboMigration18 < ActiveRecord::Migration
  def self.up
    rename_column :repairs, :device, :name
  end

  def self.down
    rename_column :repairs, :name, :device
  end
end
