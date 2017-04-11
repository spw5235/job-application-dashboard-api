class RemoveContactNameFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :contact_name, :string
  end
end
