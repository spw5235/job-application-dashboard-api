class AddDocumentRefIdToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :document_ref_id, :integer
  end
end
