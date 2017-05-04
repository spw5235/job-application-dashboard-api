class RemoveContactRefTextFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :contact_ref_text, :string
  end
end
