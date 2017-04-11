class RemoveJobNameFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :job_name, :string
  end
end
