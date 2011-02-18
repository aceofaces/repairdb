class HoboMigration13 < ActiveRecord::Migration
  def self.up
    add_column :repairs, :origin, :text

    add_index :stores, [:organization_id]

    remove_index :repairs, :name => :index_repairs_on_store_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    remove_column :repairs, :origin

    remove_index :stores, :name => :index_stores_on_organization_id rescue ActiveRecord::StatementInvalid

    add_index :repairs, [:store_id]
  end
end
