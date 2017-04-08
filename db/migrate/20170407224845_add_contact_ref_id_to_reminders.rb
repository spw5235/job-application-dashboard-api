class AddContactRefIdToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :contact_ref_id, :integer
  end
end
