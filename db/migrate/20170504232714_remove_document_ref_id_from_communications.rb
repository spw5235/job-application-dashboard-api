class RemoveDocumentRefIdFromCommunications < ActiveRecord::Migration[5.0]
  def change
    remove_column :communications, :document_ref_id, :integer
  end
end
