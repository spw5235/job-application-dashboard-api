class RemoveReminderArchiveFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :reminder_archive, :boolean
  end
end
