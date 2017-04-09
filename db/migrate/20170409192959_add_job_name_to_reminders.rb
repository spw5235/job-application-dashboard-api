class AddJobNameToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :job_name, :string
  end
end
