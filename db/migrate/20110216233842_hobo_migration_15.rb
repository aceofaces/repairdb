class HoboMigration15 < ActiveRecord::Migration
  def self.up
    add_column :devices, :status, :string

    add_index :devices, [:store_id]
    add_index :devices, [:organization_id]
  end

  def self.down
    remove_column :devices, :status

    remove_index :devices, :name => :index_devices_on_store_id rescue ActiveRecord::StatementInvalid
    remove_index :devices, :name => :index_devices_on_organization_id rescue ActiveRecord::StatementInvalid
  end
end
