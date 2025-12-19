class AddInvitationSentAtToPerson < ActiveRecord::Migration[8.0]
  def change
    add_column :people, :invitation_sent_at, :datetime
  end
end
