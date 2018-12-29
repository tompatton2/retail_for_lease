class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :header
      t.text :description
      t.string :building_type
      t.string :build_sub_type
      t.string :building_class
      t.integer :year_built
      t.string :unit_type

      t.timestamps
    end
  end
end
