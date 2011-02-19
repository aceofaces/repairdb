class HoboMigration20 < ActiveRecord::Migration
  def self.up
    add_column :repairs, :store, :string
    remove_column :repairs, :origin
  end

  def self.down
    remove_column :repairs, :store
    add_column :repairs, :origin, :string
  end
end
