class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :organizations do |t|
      t.string   :name
      t.string   :phone
      t.string   :contact
      t.string   :email
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :organizations
  end
end
