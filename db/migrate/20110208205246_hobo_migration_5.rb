class HoboMigration5 < ActiveRecord::Migration
  def self.up
    add_column :devices, :name, :string

    add_column :stores, :name, :string

    add_column :repairs, :name, :string
  end

  def self.down
    remove_column :devices, :name

    remove_column :stores, :name

    remove_column :repairs, :name
  end
end
