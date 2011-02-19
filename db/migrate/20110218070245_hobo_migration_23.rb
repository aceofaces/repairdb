class HoboMigration23 < ActiveRecord::Migration
  def self.up
    remove_column :repair_assignments, :repair_id
    remove_column :repair_assignments, :device_id

    remove_index :repair_assignments, :name => :index_repair_assignments_on_device_id rescue ActiveRecord::StatementInvalid
    remove_index :repair_assignments, :name => :index_repair_assignments_on_repair_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_column :repair_assignments, :repair_id, :integer
    add_column :repair_assignments, :device_id, :integer

    add_index :repair_assignments, [:device_id]
    add_index :repair_assignments, [:repair_id]
  end
end
