# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110216185532) do

  create_table "device_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
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

  add_index "devices", ["organization_id"], :name => "index_devices_on_organization_id"
  add_index "devices", ["store_id"], :name => "index_devices_on_store_id"

  create_table "locations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "contact"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repair_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repair_orders", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "repair_id"
  end

  add_index "repair_orders", ["repair_id"], :name => "index_repair_orders_on_repair_id"
  add_index "repair_orders", ["user_id"], :name => "index_repair_orders_on_user_id"

  create_table "repairs", :force => true do |t|
    t.date     "date"
    t.string   "ticket"
    t.text     "problem"
    t.text     "work"
    t.text     "notes"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "device_id"
    t.string   "device"
    t.string   "origin"
  end

  add_index "repairs", ["device_id"], :name => "index_repairs_on_device_id"

  create_table "store_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", :force => true do |t|
    t.integer  "organization_id"
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "tz"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stores", ["organization_id"], :name => "index_stores_on_organization_id"

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

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "invited"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
