class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.string   :make
      t.string   :model1
      t.string   :sn
      t.text     :notes
      t.string   :location
      t.string   :warranty
      t.string   :owner
      t.string   :status
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :store_id
    end
    add_index :devices, [:store_id]

    create_table :repair_orders do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :user_id
      t.integer  :repair_id
    end
    add_index :repair_orders, [:user_id]
    add_index :repair_orders, [:repair_id]

    create_table :stores do |t|
      t.string   :store
      t.string   :phone
      t.string   :tz
      t.string   :contact
      t.string   :organization
      t.text     :address
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :repairs do |t|
      t.date     :date
      t.text     :origin
      t.string   :ticket
      t.text     :problem
      t.text     :work
      t.text     :notes
      t.string   :status
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :device_id
    end
    add_index :repairs, [:device_id]
  end

  def self.down
    drop_table :devices
    drop_table :repair_orders
    drop_table :stores
    drop_table :repairs
  end
end
