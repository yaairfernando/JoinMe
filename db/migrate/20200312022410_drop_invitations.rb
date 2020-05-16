class DropInvitations < ActiveRecord::Migration[6.0]
  def change
    drop_table :invitations
  end
end
