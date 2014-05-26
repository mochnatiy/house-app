class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.column :title,       :string, :limit => 128
      t.column :district_id, :integer
      t.column :city_id,     :integer
      t.column :full_path,   :string

      t.timestamps
    end
  end
end
