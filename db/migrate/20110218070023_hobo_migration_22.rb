class HoboMigration22 < ActiveRecord::Migration
  def self.up
    remove_column :repairs, :name
  end

  def self.down
    add_column :repairs, :name, :string
  end
end
