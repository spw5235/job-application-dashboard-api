class AddCommunicationRefTextToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :communication_ref_text, :string
  end
end
