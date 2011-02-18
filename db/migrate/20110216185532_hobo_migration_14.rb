class HoboMigration14 < ActiveRecord::Migration
  def self.up
    remove_column :repairs, :store
    remove_column :repairs, :store_id
    change_column :repairs, :origin, :string, :limit => 255
  end

  def self.down
    add_column :repairs, :store, :string
    add_column :repairs, :store_id, :integer
    change_column :repairs, :origin, :text
  end
end
