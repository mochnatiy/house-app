class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.column :title, :string, :limit => 128

      t.timestamps
    end
  end
end
