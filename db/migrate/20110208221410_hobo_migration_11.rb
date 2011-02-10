class HoboMigration11 < ActiveRecord::Migration
  def self.up
    add_column :devices, :organization_id, :integer
    remove_column :devices, :location
    remove_column :devices, :owner

    add_index :devices, [:organization_id]
  end

  def self.down
    remove_column :devices, :organization_id
    add_column :devices, :location, :string
    add_column :devices, :owner, :string

    remove_index :devices, :name => :index_devices_on_organization_id rescue ActiveRecord::StatementInvalid
  end
end
