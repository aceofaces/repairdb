class HoboMigration21 < ActiveRecord::Migration
  def self.up
    add_column :repairs, :name, :string
  end

  def self.down
    remove_column :repairs, :name
  end
end
