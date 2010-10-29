class CreateRecords < ActiveRecord::Migration
  def self.up
    create_table :request_records do |t|
      t.string :database_name
      t.string :table_name
      t.string :requester_ip
      t.string :requester_project
      t.text :query_conditions
      t.timestamps
    end

    create_table :send_records do |t|
      t.integer :request_record_id
      t.text :data
      t.timestamps      
    end
    
    create_table :receive_records do |t|
      t.integer :request_record_id
      t.string :database_store
      t.string :table_store
      t.text :data
      t.timestamps      
    end

  end

  def self.down
    drop_table :send_records
    drop_table :receive_records
    drop_table :request_records
  end
end
