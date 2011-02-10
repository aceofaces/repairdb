class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :stores, :organization_id, :integer

    add_index :stores, [:organization_id]
  end

  def self.down
    remove_column :stores, :organization_id

    drop_table :locations

    remove_index :stores, :name => :index_stores_on_organization_id rescue ActiveRecord::StatementInvalid
  end
end
