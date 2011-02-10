class HoboMigration12 < ActiveRecord::Migration
  def self.up
    create_table :device_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :store_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :repair_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :device_assignments
    drop_table :store_assignments
    drop_table :repair_assignments
  end
end
