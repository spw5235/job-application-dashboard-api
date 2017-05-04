class RemoveCommunicationRefTextFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :communication_ref_text, :string
  end
end
