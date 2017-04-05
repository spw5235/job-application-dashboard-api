class AddJobTitleToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :job_title, :string
  end
end
