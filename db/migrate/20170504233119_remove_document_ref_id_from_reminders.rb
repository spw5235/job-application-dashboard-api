class RemoveDocumentRefIdFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :document_ref_id, :integer
  end
end
