class CreateFinals < ActiveRecord::Migration[5.0]
  def change
    create_table :finals do |t|
      t.string :venue_name
      t.string :venue_address
      t.string :venue_ownername
      t.datetime :approved_at
      t.string :approved_by

      t.timestamps
    end
  end
end
