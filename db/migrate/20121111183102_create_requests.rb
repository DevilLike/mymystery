class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :message
      t.integer :user_id

      t.timestamps
    end
  end
end
