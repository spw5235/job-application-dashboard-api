class AddContactNameToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :contact_name, :string
  end
end
