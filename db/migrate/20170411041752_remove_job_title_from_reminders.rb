class RemoveJobTitleFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :job_title, :string
  end
end
