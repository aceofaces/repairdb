class HoboMigration9 < ActiveRecord::Migration
  def self.up
    add_column :repairs, :device, :string
  end

  def self.down
    remove_column :repairs, :device
  end
end
