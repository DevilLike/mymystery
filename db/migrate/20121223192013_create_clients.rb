class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :surname
      t.string :name
      t.string :patronymic
      t.string :phone
      t.string :passport

      t.timestamps
    end
  end
end
