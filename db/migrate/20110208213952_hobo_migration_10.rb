class HoboMigration10 < ActiveRecord::Migration
  def self.up
    add_column :repairs, :store_id, :integer

    add_index :repairs, [:store_id]
  end

  def self.down
    remove_column :repairs, :store_id

    remove_index :repairs, :name => :index_repairs_on_store_id rescue ActiveRecord::StatementInvalid
  end
end
