class HoboMigration25 < ActiveRecord::Migration
  def self.up
    change_column :devices, :name, :string, :limit => 255
    change_column :devices, :created_at, :datetime
    change_column :devices, :updated_at, :datetime
    change_column :devices, :notes, :text
    change_column :devices, :sn, :string, :limit => 255
    change_column :devices, :store_id, :integer
    change_column :devices, :make, :string, :limit => 255
    change_column :devices, :organization_id, :integer
    change_column :devices, :status, :string, :limit => 255
    change_column :devices, :model1, :string, :limit => 255
    change_column :devices, :warranty, :string, :limit => 255

    add_index :devices, [:store_id]
    add_index :devices, [:organization_id]
  end

  def self.down
    change_column :devices, :name,
    change_column :devices, :created_at,
    change_column :devices, :updated_at,
    change_column :devices, :notes,
    change_column :devices, :sn,
    change_column :devices, :store_id,
    change_column :devices, :make,
    change_column :devices, :organization_id,
    change_column :devices, :status,
    change_column :devices, :model1,
    change_column :devices, :warranty,

    remove_index :devices, :name => :index_devices_on_store_id rescue ActiveRecord::StatementInvalid
    remove_index :devices, :name => :index_devices_on_organization_id rescue ActiveRecord::StatementInvalid
  end
end
