class AddContactRefTextToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :contact_ref_text, :string
  end
end
