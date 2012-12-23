class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :date
      t.integer :value
      t.integer :client_id
      t.string :vin
      t.string :user_id
      t.integer :number

      t.timestamps
    end
  end
end
