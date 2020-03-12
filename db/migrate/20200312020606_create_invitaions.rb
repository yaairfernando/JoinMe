class CreateInvitaions < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.integer :atendee_id
      t.integer :event_id
      t.boolean :accepted

      t.timestamps
    end
    add_index :invitations, :atendee_id
    add_index :invitations, :event_id
  end
end
