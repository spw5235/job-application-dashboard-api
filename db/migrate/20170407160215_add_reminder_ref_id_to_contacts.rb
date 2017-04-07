class AddReminderRefIdToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :reminder_ref_id, :integer
  end
end
