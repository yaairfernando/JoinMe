class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.integer :attendee_id, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.boolean :accepted, default: false
      t.timestamps
    end
    add_index :invitations, :attendee_id
  end
end
