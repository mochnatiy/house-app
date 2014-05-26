class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.column :title, :string, :limit => 128
      t.column :city_id, :integer

      t.timestamps
    end
  end
end
