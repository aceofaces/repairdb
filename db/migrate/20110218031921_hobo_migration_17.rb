class HoboMigration17 < ActiveRecord::Migration
  def self.up
    create_table :repair_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :repair_id
      t.integer  :device_id
    end
    add_index :repair_assignments, [:repair_id]
    add_index :repair_assignments, [:device_id]
  end

  def self.down
    drop_table :repair_assignments
  end
end
