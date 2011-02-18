class HoboMigration16 < ActiveRecord::Migration
  def self.up
    drop_table :repair_orders
    drop_table :device_assignments
    drop_table :store_assignments
    drop_table :repair_assignments
    drop_table :stores_old
    drop_table :devices_old
  end

  def self.down
    create_table "repair_orders", :force => true do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "user_id"
      t.integer  "repair_id"
    end

    add_index "repair_orders", ["repair_id"], :name => "index_repair_orders_on_repair_id"
    add_index "repair_orders", ["user_id"], :name => "index_repair_orders_on_user_id"

    create_table "device_assignments", :force => true do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "store_assignments", :force => true do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "repair_assignments", :force => true do |t|
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "stores_old", :force => true do |t|
      t.string   "phone"
      t.string   "tz"
      t.string   "contact"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "organization_id"
      t.string   "name"
      t.string   "address1"
      t.string   "address2"
      t.string   "city"
      t.string   "state"
      t.string   "zip"
    end

    create_table "devices_old", :force => true do |t|
      t.string   "make"
      t.string   "model1"
      t.string   "sn"
      t.text     "notes"
      t.string   "warranty"
      t.string   "status"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "store_id"
      t.integer  "organization_id"
    end
  end
end
