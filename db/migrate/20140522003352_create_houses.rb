class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.column :number, :string, :limit => 8
      t.column :street_id, :integer

      t.timestamps
    end
  end
end
