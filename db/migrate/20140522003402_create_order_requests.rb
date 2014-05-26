class CreateOrderRequests < ActiveRecord::Migration
  def change
    create_table :order_requests do |t|
      t.column :client_name, :string
      t.column :phone_number, :string, :limit => 32
      t.column :flat_number, :integer, :limit => 4
      t.column :integer, :house_id

      t.timestamps
    end
  end
end
