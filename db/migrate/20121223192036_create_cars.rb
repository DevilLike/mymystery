class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :vin
      t.string :brand
      t.string :model
      t.string :modification
      t.string :package_bundle
      t.string :color
      t.integer :status

      t.timestamps
    end
  end
end
