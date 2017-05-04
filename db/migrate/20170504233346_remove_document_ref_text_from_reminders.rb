class RemoveDocumentRefTextFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :document_ref_text, :string
  end
end
