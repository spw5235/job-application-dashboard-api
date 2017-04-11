class RemoveReminderRefIdFromContacts < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :reminder_ref_id, :integer
  end
end
