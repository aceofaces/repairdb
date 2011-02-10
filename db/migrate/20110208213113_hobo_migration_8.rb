class HoboMigration8 < ActiveRecord::Migration
  def self.up
    remove_column :devices, :name

    remove_column :repairs, :name
  end

  def self.down
    add_column :devices, :name, :string

    add_column :repairs, :name, :string
  end
end
