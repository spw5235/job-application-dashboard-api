class AddDocumentRefIdToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :document_ref_id, :integer
  end
end
