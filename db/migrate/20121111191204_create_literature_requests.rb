class CreateLiteratureRequests < ActiveRecord::Migration
  def change
    create_table :literature_requests do |t|
      t.integer :idea_id
      t.integer :request_id

      t.timestamps
    end
  end
end