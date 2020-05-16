class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.text :description
      t.string :location
      t.integer :creator_id

      t.timestamps
    end
    add_index :events, :creator_id
  end
end
