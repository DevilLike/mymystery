class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.string :phone
      t.string :brand
      t.string :model
      t.string :modification
      t.string :package_bundle
      t.string :color
      t.text :comment

      t.timestamps
    end
  end
end
