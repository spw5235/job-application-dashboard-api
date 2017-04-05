class AddJobRefIdToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :job_ref_id, :integer
  end
end
