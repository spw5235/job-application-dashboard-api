class AddJobRefTextToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :job_ref_text, :string
  end
end
