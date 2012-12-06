class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :location
      t.string :event_name
      t.string :description

      t.timestamps
    end
  end
end
