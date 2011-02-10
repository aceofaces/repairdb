class HoboMigration6 < ActiveRecord::Migration
  def self.up
    add_column :stores, :address1, :string
    add_column :stores, :address2, :string
    add_column :stores, :city, :string
    add_column :stores, :state, :string
    add_column :stores, :zip, :string
    remove_column :stores, :address
    remove_column :stores, :store
  end

  def self.down
    remove_column :stores, :address1
    remove_column :stores, :address2
    remove_column :stores, :city
    remove_column :stores, :state
    remove_column :stores, :zip
    add_column :stores, :address, :text
    add_column :stores, :store, :string
  end
end
