class RemoveDocumentRefIdFromContacts < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :document_ref_id, :integer
  end
end
