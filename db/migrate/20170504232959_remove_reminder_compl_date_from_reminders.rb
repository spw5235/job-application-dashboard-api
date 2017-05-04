class RemoveReminderComplDateFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :reminder_compl_date, :date
  end
end
