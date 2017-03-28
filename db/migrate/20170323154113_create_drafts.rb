class CreateDrafts < ActiveRecord::Migration[5.0]
  def change
    create_table :drafts do |t|
      t.string :venue_name
      t.string :venue_address
      t.string :venue_ownername
      t.boolean :rejected
      t.boolean :accepted
      t.timestamps
    end
  end
end
